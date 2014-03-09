package main

import (
	"fmt"
	"runtime"
	"sync"
)

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                               PRODUCER_POOL                                //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

type Producer func(int, chan interface{})

type Producer_Pool struct {
	wg        sync.WaitGroup
	num_prods int
	buff_size int
}

func New_Producer_Pool(num_prods int, buff_size int) *Producer_Pool {
	return new(Producer_Pool).init(num_prods, buff_size)
}

func (this *Producer_Pool) init(num_prods int, buff_size int) *Producer_Pool {

	this.buff_size = buff_size
	this.num_prods = num_prods

	return this
}

func (this *Producer_Pool) start(producer Producer) chan interface{} {
	var channel chan interface{}

	if this.buff_size > 1 {
		channel = make(chan interface{}, this.buff_size)
	} else {
		channel = make(chan interface{})
	}

	this.wg.Add(this.num_prods)

	for i := 0; i < this.num_prods; i++ {
		go func(i int) {
			defer this.wg.Done()
			producer(i, channel)
		}(i)
	}

	go func() {
		this.wg.Wait()
		close(channel)
	}()

	return channel
}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                               CONSUMER_POOL                                //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////

type Consumer func(interface{})

type Consumer_Pool struct {
	num_prods int
	wg        sync.WaitGroup
}

func New_Consumer_Pool(num_prods int) *Consumer_Pool {
	return new(Consumer_Pool).init(num_prods)
}

func (this *Consumer_Pool) init(num_prods int) *Consumer_Pool {
	this.num_prods = num_prods

	return this
}

func (this *Consumer_Pool) start(c chan interface{}, consumer Consumer) {

	this.wg.Add(this.num_prods)

	for i := 0; i < this.num_prods; i++ {
		go func() {
			defer this.wg.Done()
			for data := range c {
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

type Middleware func(interface{}) interface{}

type Middleware_Pool struct {
	num_heads int
	buf_size  int
	wg        sync.WaitGroup
}

func New_Middleware_Pool(num_heads int, buf_size int) *Middleware_Pool {
	return new(Middleware_Pool).init(num_heads, buf_size)
}

func (this *Middleware_Pool) init(num_heads int, buf_size int) *Middleware_Pool {
	this.num_heads = num_heads
	this.buf_size = buf_size

	return this
}

func (this *Middleware_Pool) start(c chan interface{}, middleware Middleware) chan interface{} {
	var out_chan chan interface{}

	if this.buf_size > 1 {
		out_chan = make(chan interface{}, this.buf_size)
	} else {
		out_chan = make(chan interface{})
	}

	this.wg.Add(this.num_heads)

	for i := 0; i < this.num_heads; i++ {
		go func() {
			defer this.wg.Done()
			for data := range c {
				out_chan <- middleware(data)
			}
		}()
	}

	go func() {
		this.wg.Wait()
		close(out_chan)
	}()

	return out_chan

}

////////////////////////////////////////////////////////////////////////////////
//                                                                            //
//                               MAIN                                         //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
func main() {

	runtime.GOMAXPROCS(runtime.NumCPU())

	var my_arr = []int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}

	prod_pool := New_Producer_Pool(10, 5)
	midd_pool := New_Middleware_Pool(10, 5)
	cons_pool := New_Consumer_Pool(10)

	messages := prod_pool.start(func(i int, c chan interface{}) {
		head_index := my_arr[i]

		for j := 0; j < 10000; j++ {
			c <- head_index
		}
	})

	mutated_messages := midd_pool.start(messages, func(data interface{}) interface{} {
		return fmt.Sprintf("Changed values: %d", data)
	})

	cons_pool.start(mutated_messages, func(msg interface{}) {
		fmt.Println(msg)
	})

	var vulgar_arr = []string{"fuck", "damn", "shit"}

	vulgar_messages := prod_pool.start(func(i int, c chan interface{}) {
		my_vulgar_word := vulgar_arr[i%len(vulgar_arr)]
		c <- my_vulgar_word
	})

	mutated_vulgar_messages := midd_pool.start(vulgar_messages, func(data interface{}) interface{} {
		return fmt.Sprintf("Changed FUCKING values: %s", data)
	})

	cons_pool.start(mutated_vulgar_messages, func(msg interface{}) {
		fmt.Println(msg)
	})

	cons_pool.wait()

	fmt.Println("All producers done, all messages printed, all channels closed")
}
