package main

import (
	"container/list"
	"fmt"
	"math/rand"
	"runtime"
	"sync"
	"time"
)

// var NUM_SIMULATIONS = 1

/**
 * Object place holder for simple concurrent gc
 */
type Object struct {
	marked bool
	data   int
}

/**
 * A head's internal list of objects
 */
type ObjectList struct {
	id string
	sync.Mutex
	*list.List
}

/**
 * Creates a new Object list
 */
func New(id string) *ObjectList {
	obj_list := new(ObjectList)
	obj_list.id = id
	obj_list.List = list.New()

	return obj_list
}

/**
 * Starts tracking of an Object
 */
func (this *ObjectList) AddObject(obj *Object) {
	this.Lock()
	this.PushFront(obj)
	fmt.Printf("%s : created object...now %d in list\n", this.id, this.Len())
	this.Unlock()
}

/**
 * Free's all marked objects in the objects list
 */
func (this *ObjectList) FreeObjects() {
	//block changes to the list while you free lost objects
	this.Lock()

	for elem := this.Front(); elem != nil; elem = elem.Next() {
		if obj := elem.Value.(*Object); obj.marked {
			this.Remove(elem)
			//call my_mem_allocator.free(obj)
			fmt.Printf("%s : freed object...now %d left\n", this.id, this.Len())
		}
	}

	this.Unlock()
}

func (this *ObjectList) MarkRandomObject() {
	this.Lock()

	index := rand.Intn(this.Len() + 1)

	elem := this.Front()
	for i := 0; i < index; i++ {
		elem = elem.Next()
	}

	if elem != nil {
		obj := elem.Value.(*Object)
		obj.marked = true
	}

	this.Unlock()
}

/**
 * SIMULATION CODE
 */

func simulate_head(objList *ObjectList) {
	fmt.Printf("Head %s started...\n", objList.id)
	for {
		make_num := rand.Intn(20)
		free_num := rand.Intn(20)

		for i := 0; i < make_num; i++ {
			objList.AddObject(&Object{false, i})
		}

		for i := 0; i < free_num; i++ {
			objList.MarkRandomObject()
		}

		time.Sleep(100 * time.Millisecond)
	}
}

func start_simulation() []*ObjectList {
	rand.Seed(int64(time.Now().UnixNano()))
	heads := make([]*ObjectList, 20, 20)

	for i := 0; i < 20; i++ {
		heads[i] = New(fmt.Sprintf("ObjectList %d", i))
		go simulate_head(heads[i])
	}

	return heads
}

func run_garbage_collector(heads []*ObjectList) {
	i := 0
	for {
		i = ((i + 1) % 20)
		heads[i].FreeObjects()
	}
}

func main() {
	runtime.GOMAXPROCS(4)
	running_heads := start_simulation()
	go run_garbage_collector(running_heads)
	time.Sleep(5 * time.Second)
}
