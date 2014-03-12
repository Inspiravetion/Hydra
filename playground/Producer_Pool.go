package main

import (
	"fmt"
	"reflect"
	"runtime"
	"sync"
)

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                               PRODUCER_POOL                                //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

type Producer func(int, *Send_Set)

type Producer_Pool struct {
	wg        sync.WaitGroup
	chans     []chan interface{}
	send_set  *Send_Set
	num_prods int
	num_chans int
	buff_size int
}

func New_Producer_Pool(num_prods, num_chans, buff_size int) *Producer_Pool {
	return new(Producer_Pool).init(num_prods, num_chans, buff_size)
}

func (this *Producer_Pool) init(num_prods, num_chans, buff_size int) *Producer_Pool {

	this.buff_size = buff_size
	this.num_prods = num_prods
	this.num_chans = num_chans

	this.send_set = New_Send_Set(make([]chan interface{}, 0))

	return this
}

func (this *Producer_Pool) start(producer Producer) []chan interface{} {

	for i := 0; i < this.num_chans; i++ {
		if this.buff_size > 1 {
			this.send_set.Add(make(chan interface{}, this.buff_size))
		} else {
			this.send_set.Add(make(chan interface{}))
		}
	}

	this.wg.Add(this.num_prods)

	for i := 0; i < this.num_prods; i++ {
		go func(i int) {
			defer this.wg.Done()
			producer(i, this.send_set)
		}(i)
	}

	go func() {
		this.wg.Wait()
		this.send_set.Close_All()
	}()

	return this.send_set.Channels()
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                               CONSUMER_POOL                                //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

type Consumer func(interface{})

type Consumer_Pool struct {
	num_cons int
	wg       sync.WaitGroup
}

func New_Consumer_Pool(num_cons int) *Consumer_Pool {
	return new(Consumer_Pool).init(num_cons)
}

func (this *Consumer_Pool) init(num_cons int) *Consumer_Pool {
	this.num_cons = num_cons

	return this
}

func (this *Consumer_Pool) start(chans []chan interface{}, consumer Consumer) {
	recv_set := New_Recv_Set(chans)

	this.wg.Add(this.num_cons)

	for i := 0; i < this.num_cons; i++ {
		go func() {
			defer this.wg.Done()
			for data, done := recv_set.Next(); !done; data, done = recv_set.Next() {
				consumer(data)
			}
		}()
	}

}

func (this *Consumer_Pool) wait() {
	this.wg.Wait()
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                               MIDDLEWARE_POOL                              //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

type Middleware func(interface{}, *Send_Set)

type Middleware_Pool struct {
	wg        sync.WaitGroup
	send_set  *Send_Set
	num_chans int
	num_heads int
	buff_size int
}

func New_Middleware_Pool(num_heads, num_chans, buf_size int) *Middleware_Pool {
	return new(Middleware_Pool).init(num_heads, num_chans, buf_size)
}

func (this *Middleware_Pool) init(num_heads, num_chans, buf_size int) *Middleware_Pool {
	this.num_chans = num_chans
	this.num_heads = num_heads
	this.buff_size = buf_size

	this.send_set = New_Send_Set(make([]chan interface{}, 0))

	return this
}

func (this *Middleware_Pool) start(in_chans []chan interface{}, middleware Middleware) []chan interface{} {

	for i := 0; i < this.num_chans; i++ {
		if this.buff_size > 1 {
			this.send_set.Add(make(chan interface{}, this.buff_size))
		} else {
			this.send_set.Add(make(chan interface{}))
		}
	}

	this.wg.Add(this.num_heads)

	recv_set := New_Recv_Set(in_chans)

	for i := 0; i < this.num_heads; i++ {
		go func() {
			defer this.wg.Done()
			for data, done := recv_set.Next(); !done; data, done = recv_set.Next() {
				middleware(data, this.send_set)
			}
		}()
	}

	go func() {
		this.wg.Wait()
		this.send_set.Close_All()
	}()

	return this.send_set.Channels()

}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                               Send_Set                                     //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

type Send_Set struct {
	loop_lock sync.Mutex
	send_lock sync.Mutex
	cases     []reflect.SelectCase
}

func New_Send_Set(chans []chan interface{}) *Send_Set {
	return new(Send_Set).init(chans)
}

func (this *Send_Set) init(chans []chan interface{}) *Send_Set {
	this.cases = make([]reflect.SelectCase, len(chans))

	for i := 0; i < len(chans); i++ {
		this.cases[i] = reflect.SelectCase{
			Dir:  reflect.SelectSend,
			Chan: reflect.ValueOf(chans[i]),
		}
	}

	return this
}

func (this *Send_Set) Send(val interface{}) {
	this.send_lock.Lock()
	defer this.send_lock.Unlock()

	for i := 0; i < len(this.cases); i++ {
		this.cases[i].Send = reflect.ValueOf(val)
	}

	reflect.Select(this.cases)
}

func (this *Send_Set) Close_All() {
	for i := 0; i < len(this.cases); i++ {
		c, _ := this.cases[i].Chan.Interface().(chan interface{})
		close(c)
	}
}

func (this *Send_Set) Add(c chan interface{}) {
	this.send_lock.Lock()
	defer this.send_lock.Unlock()

	this.cases = append(this.cases, reflect.SelectCase{
		Dir:  reflect.SelectSend,
		Chan: reflect.ValueOf(c),
	})
}

func (this *Send_Set) Channels() []chan interface{} {
	chans := make([]chan interface{}, len(this.cases))

	for i := 0; i < len(this.cases); i++ {
		c, _ := this.cases[i].Chan.Interface().(chan interface{})
		chans[i] = c
	}

	return chans
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                               Recv_Set                                     //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

type Recv_Set struct {
	loop_lock sync.Mutex
	case_lock sync.Mutex
	cases     []reflect.SelectCase
}

func New_Recv_Set(chans []chan interface{}) *Recv_Set {
	return new(Recv_Set).init(chans)
}

func (this *Recv_Set) init(chans []chan interface{}) *Recv_Set {
	this.cases = make([]reflect.SelectCase, len(chans))

	for i := 0; i < len(chans); i++ {
		this.cases[i] = reflect.SelectCase{
			Dir:  reflect.SelectRecv,
			Chan: reflect.ValueOf(chans[i]),
		}
	}

	return this
}

func (this *Recv_Set) is_empty() bool {
	this.case_lock.Lock()
	defer this.case_lock.Unlock()

	empty := len(this.cases) <= 0
	return empty
}

func (this *Recv_Set) Add(c chan interface{}) {
	this.case_lock.Lock()
	defer this.case_lock.Unlock()

	this.cases = append(this.cases, reflect.SelectCase{
		Dir:  reflect.SelectRecv,
		Chan: reflect.ValueOf(c),
	})
}

func (this *Recv_Set) Next() (interface{}, bool) {
	this.loop_lock.Lock()

	if !this.is_empty() {

		chosen_index, value, still_open := reflect.Select(this.cases)

		if !still_open {
			this.case_lock.Lock()
			this.cases[chosen_index] = this.cases[len(this.cases)-1]
			this.cases = this.cases[0 : len(this.cases)-1]
			this.case_lock.Unlock()
			this.loop_lock.Unlock()
			return this.Next()
		}

		this.loop_lock.Unlock()
		return value.Interface(), false

	} else {
		this.loop_lock.Unlock()
		return nil, true
	}

}

func (this *Recv_Set) Channels() []chan interface{} {
	this.case_lock.Lock()
	defer this.case_lock.Unlock()

	chans := make([]chan interface{}, len(this.cases))

	for i := 0; i < len(this.cases); i++ {
		c, _ := this.cases[i].Chan.Interface().(chan interface{})
		chans[i] = c
	}

	return chans

}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                               Multi_Stream                                 //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

type Multi_Stream struct {
	prod_chans *Recv_Set
	num_prod   int
	num_midd   int
	num_cons   int
}

func New_Multi_Stream(prods, midds, cons int) *Multi_Stream {
	return new(Multi_Stream).init(prods, midds, cons)
}

func (this *Multi_Stream) init(prods, midds, cons int) *Multi_Stream {
	this.num_prod = prods
	this.num_midd = midds
	this.num_cons = cons

	return this
}

func (this *Multi_Stream) ensure_producer() {
	if this.prod_chans == nil {
		fmt.Println("Error: Streams must start with a producer")
	}
}

func (this *Multi_Stream) Produce(num_out_chans, buff_size int, producer Producer) *Multi_Stream {

	chans := New_Producer_Pool(this.num_prod, num_out_chans, buff_size).start(producer)

	this.prod_chans = New_Recv_Set(chans)

	return this
}

func (this *Multi_Stream) Process(num_out_chans, buff_size int, middleware Middleware) *Multi_Stream {
	this.ensure_producer()

	chans := New_Middleware_Pool(this.num_midd, num_out_chans, buff_size).start(this.prod_chans.Channels(), middleware)

	this.prod_chans = New_Recv_Set(chans)

	return this
}

func (this *Multi_Stream) Consume(consumer Consumer) {
	this.ensure_producer()

	New_Consumer_Pool(this.num_cons).start(this.prod_chans.Channels(), consumer)
}

func (this *Multi_Stream) Consume_And_Wait(consumer Consumer) {
	this.ensure_producer()

	cons_pool := New_Consumer_Pool(this.num_cons)
	cons_pool.start(this.prod_chans.Channels(), consumer)
	cons_pool.wait()
}

func (this *Multi_Stream) Collect(num_out_chans, buff_size int, middleware Middleware) []chan interface{} {
	this.ensure_producer()

	return New_Middleware_Pool(this.num_midd, num_out_chans, buff_size).start(this.prod_chans.Channels(), middleware)
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                               MAIN                                         //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
func main() {

	runtime.GOMAXPROCS(runtime.NumCPU())

	//Hard Ways
	var my_arr = []int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}

	var vulgar_arr = []string{"fuck", "damn", "shit"}

	//Easy ways
	New_Multi_Stream(10, 10, 10).Produce(5, 2, func(i int, chans *Send_Set) {
		head_index := my_arr[i]

		for j := 0; j < 10000; j++ {
			chans.Send(head_index)
		}
	}).Process(5, 2, func(data interface{}, chans *Send_Set) {
		chans.Send(fmt.Sprintf("Changed values: %d", data))
	}).Consume_And_Wait(func(data interface{}) {
		fmt.Println(data)
	})

	New_Multi_Stream(10, 10, 10).Produce(5, 2, func(i int, chans *Send_Set) {
		my_vulgar_word := vulgar_arr[i%len(vulgar_arr)]
		chans.Send(my_vulgar_word)
	}).Process(5, 2, func(data interface{}, chans *Send_Set) {
		chans.Send(fmt.Sprintf("Changed FUCKING values: %s", data))
	}).Consume_And_Wait(func(msg interface{}) {
		fmt.Println(msg)
	})
}
