//want to build abstractions so we can write things like this
import Producer_Pool from std::concurrent

var my_arr = [0,1,2,3,4,5,6,7,8,9]

var prod_pool = new Producer_Pool(10, 10)
var midd_pool = new Middleware_Pool(10, 10)
var cons_pool = new Consumer_Pool(10)

var messages = prod_pool.start((arr, i, chan){ //start 10 heads running
  var my_index = arr[i:i+1] //this is an array slice

  for _ in 0..10 do                      //the given function, with
    my_index[0] -> chan                  //a chanel with a buffer size
  end                                    //of 5

}(my_arr))

var midd_messages = midd_pool.start(messages, (msg){
    return "Changed message: ${msg}"
})

cons_pool.start(midd_messages, (msg){
    print(msg) //Will print out 0 to 9 ten times each in a random order across ten
})             //consumer threads...now they also get changed by the middleware

var reused = prod_pool.start((i, chan){
  "this is from a reused pool ${i}" -> chan
})

var mid_reused_messages = mid_pool.start(reused, (msg){
    return "HAHA I changed it again! -> ${msg}"
})

cons_pool.start(mid_reused_messages, (reused_msg){
    print(reused_msg)
})

cons_pool.wait() // this makes the main thread wait for the consumers to process
                 //all of the data from the producers

print('All producers done, all messages printed, channel closed')

//Implementation----------------------------------------------------
import WaitGroup from std::sync

class Producer_Pool

  Producer_Pool(num_prods, buf_size){
    @_num_prods = num_prods
    @_buf_size  = buf_size
    @_wg        = new WaitGroup()
  }

  //This assumes that BOTH and ONLY functions and Channels get passed by reference
  //into closures...super intuitive but don't forget
  function start(producer){
    var chan

    if @_buf_size and @_buf_size.is_a? Int then
      chan = <-@_buf_size->
    else
      chan = <-->
    end

    @_wg.add(@_num_prods)

    for i in 0 to @num_prods do
      spawn (wg){
        producer(i, chan) //WHAT IF ERROR HERE?!?!
        wg.done() //WILL THIS STILL GET CALLED??!?!...how does rust/go do it?
      }(@_wg)              //DO WE NEED DEFER?!?!
    end

    spawn (wg){
      wg.wait()
      close(chan)
    }(@_wg)

    return chan
  }

end

class Consumer_Pool //Scaling this to multiple channels is going to
                    //require select i think...because it needs to not block
  Consumer_Pool(num_cons){
    @_num_cons = num_cons
    @_wg       = new WaitGroup()
  }

  function start(chan, consumer){ //get this to scale to an arbitrary number of chanels
    @_wg.add(@_num_cons)

    for _ in 0 to @_num_cons do
      spawn (wg){
        for data in chan do
          consumer(data)
        end
        wg.done()
      }(@_wg)
    end
  }

  function wait(){ //lets main thread wait for consumers to finish if need be
    @_wg.wait()    //consumers suck producers dry so don't need it for them
  }

end

class Middleware_Pool //take in data from one channel...yield a value to be sent to an out channel

  Middleware_Pool(num_heads, buf_size){
    @_num_heads = num_heads
    @_buf_size  = buf_size
    @_wg        = new WaitGroup()
  }

  function start(in_chan, middleware){
    var out_chan

    if @_buf_size and @_buf_size.is_a? Int then
      out_chan = <-@_buf_size->
    else
      out_chan = <-->
    end

    @_wg.add(@_num_heads)

    for _ in 0 to @_num_heads do
      spawn(wg){
        for data in in_chan do
          middleware(data) -> out_chan
        end
        wg.done()
      }(@_wg)
    end

    spawn (wg){
      wg.wait()
      close(out_chan)
    }(@_wg)

    return out_chan

  }

end


//Possible High Level Composition
new Stream()
.produce(10, 5, (chan){
    something() -> chan
})
.process(10, 5, (data){
    return do_something_to_the(data)
})
.consume(10, (finished_data){ //dont need to collect data
    log(finished_data)
})

var results = new Stream()
.produce(10, 5, (chan){
    something() -> chan
})
.process(10, 5, (data){
    return do_something_to_the(data)
})
.collect(10, 5, (finished_data){ //need to collect data
    return prettify(finished_data)
})

class Stream

  Stream(){
    @_prod_chan = null
  }

  function produce(num_heads, buff_size, producer){
    @_prod_chan = new Producer_Pool(num_heads, buff_size)
      .start(producer)
  }

  function process(num_heads, buff_size, middleware){
    @_ensure_producer()

    @_prod_chan = new Middleware_Pool(num_heads, buff_size)
      .start(@_prod_chan, middleware)
  }

  function consume(num_heads, consumer){
    @_ensure_producer()

    var cons_pool = new Consumer_pool(num_heads).start(@_prod_chan, consumer)
    cons_pool.wait()
  }

  function collect(){
    @_ensure_producer()

    return new Middleware_Pool(num_heads, buff_size)
      .start(@_prod_chan, middleware)
  }

  function _ensure_producer(){
    if !@_prod_chan then throw 'Streams must start with a producer' end
  }

end
