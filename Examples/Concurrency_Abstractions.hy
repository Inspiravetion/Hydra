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

  Producer_Pool(num_prods, num_chans, buf_size){
    @_num_prods = num_prods
    @_num_chans = num_chans
    @_buf_size  = buf_size
    @_wg        = new WaitGroup()
    @_chans     = []
    @_send_set  = new SendSet()
  }

  //This assumes that BOTH and ONLY functions and Channels get passed by reference
  //into closures...super intuitive but don't forget
  function start(producer){

    for i in 0 to @_num_chans do

      if @_buf_size and @_buf_size.is_a? Int then
        @_send_set.add(<-@_buf_size->)
      else
        @_send_set.add(<-->)
      end

    end

    @_wg.add(@_num_prods)

    for i in 0 to @num_prods do
      spawn (wg, send_set){
        for val in producer do //WHAT IF ERROR HERE?!?!...also for_in should be able to take a class with a for_in generator or a straight generator function
          send_set.send(val)
        end
        wg.done() //WILL THIS STILL GET CALLED??!?!...how does rust/go do it?
      }(@_wg, @_send_set)              //DO WE NEED DEFER?!?!
    end

    spawn (wg, send_set){
      wg.wait()
      send_set.close_all()
    }(@_wg, @_send_set)

    return @_send_set.channels()
  }

end

class Consumer_Pool //Scaling this to multiple channels is going to
                    //require select i think...because it needs to not block
  Consumer_Pool(num_cons){
    @_num_cons = num_cons
    @_wg       = new WaitGroup()
  }

  function start(chans, consumer){ //get this to scale to an arbitrary number of chanels
    var recv_set = new Recv_Set(chans)

    @_wg.add(@_num_cons)

    for _ in 0 to @_num_cons do
      spawn (wg, recv_set){
        for data in recv_set do
          consumer(data)
        end
        wg.done()
      }(@_wg, recv_set)
    end
  }

  function wait(){ //lets main thread wait for consumers to finish if need be
    @_wg.wait()    //consumers suck producers dry so don't need it for them
  }

end

class Middleware_Pool //take in data from one channel...yield a value to be sent to an out channel

  Middleware_Pool(num_heads, num_chans, buf_size){
    @_num_heads = num_heads
    @_buf_size  = buf_size
    @_wg        = new WaitGroup()
    @_num_chans = num_chans
    @_send_set  = new Send_Set()
  }

  function start(in_chans, middleware){
    for i in 0 to @_num_chans do

      if @_buf_size and @_buf_size.is_a? Int then
        @_send_set.add(<-@_buf_size->)
      else
        @_send_set.add(<-->)
      end

    end

    @_wg.add(@_num_heads)

    var recv_set = new Recv_Set(in_chans)

    for _ in 0 to @_num_heads do
      spawn(wg, send_set, recv_set){
        for data in recv_set do
          send_set.send(middleware(data))
        end
        wg.done()
      }(@_wg, @_send_set, recv_set)
    end

    spawn (wg, send_set){
      wg.wait()
      send_set.close_all()
    }(@_wg, @_send_set)

    return @_send_set.channels()

  }

end


//Possible High Level Composition
new Multi_Stream(10, 10, 10)
.produce(5, (chan){
    something() -> chan
})
.process(5, (data){
    return do_something_to_the(data)
})
.consume((finished_data){ //dont need to collect data
    log(finished_data)
})

var results = new Multi_Stream(10,10,10)
.produce(5, (chan){
    something() -> chan
})
.process(5, (data){
    return do_something_to_the(data)
})
.collect(5, (finished_data){ //need to collect data
    return prettify(finished_data)
})

for data in results do
  print(data)
end

//WHAT THE NEW ONE WILL BE LIKE
//------------------------------------------------------------------------------

new Multi_Stream(10, 10, 10)
.produce(5, 2, *(chan){
    for i in 0 to 10 do
      yield something()
    end
})
.consume((finished_data){ //dont need to collect data
    log(finished_data)
})
//------------------------------------------------------------------------------


class Multi_Stream

  Multi_Stream(num_prod, num_midd, num_cons){
    @_prod_chans = null
    @_num_prod   = num_prod
    @_num_midd   = num_midd
    @_num_cons   = num_cons
  }

  function produce(num_out_chans, buff_size, producer){
    @_prod_chans = new Producer_Pool(@_num_prod, num_out_chans, buff_size)
      .start(producer)

    return this
  }

  function process(num_out_chans, buff_size, middleware){
    @_ensure_producer()

    @_prod_chans = new Middleware_Pool(@_num_midd, num_out_chans, buff_size)
      .start(@_prod_chans, middleware)

    return this
  }

  function consume(consumer){
    @_ensure_producer()

    new Consumer_pool(@_num_cons).start(@_prod_chans, consumer)
  }

  function consume_and_wait(consumer){
    @_ensure_producer()

    var cons_pool = new Consumer_pool(@_num_cons).start(@_prod_chans, consumer)
    cons_pool.wait()
  }

  function collect(num_out_chans, buff_size, middleware){
    @_ensure_producer()

    return new Middleware_Pool(@_num_cons, num_out_chans, buff_size)
      .start(@_prod_chans, middleware)
  }

  function _ensure_producer(){
    if !@_prod_chan then throw 'Streams must start with a producer' end
  }

end

//Let you select from an array of channels, sending and recieving, and expose a for_in interface
import select, Select_Case, SEND, RECV from std::runtime
import Mutex from std::sync

class Recv_Set

  Recv_Set(recv_chans=[]){

    recv_chans.map((chan){
        return new Select_Case(chan, RECV)
    })

    @_cases = recv_chans
    @_cases_lock = new Mutex()
  }

  gen function for_in(){ //for_in methods are going to have to be head safe so that
    var chosen_index, value, still_open //multiple heads can run them

    while !@empty?() do

      chosen_index, value, still_open = select(@_cases)

      if !still_open then
        @_cases_lock.lock()
        @_cases.remove(chosen_index)
        @_cases_lock.unlock()
        continue
      end

      yield value

    end
  }

  function add(chan){
    @_cases_lock.lock()
    @_cases.push(new Select_Case(chan, RECV))
    @_cases_lock.unlock()
  }

  function empty?(){
    var empty

    @cases_lock.lock()

    empty = @_cases.length <= 0

    @cases_lock.unlock()

    return empty
  }

end

class Send_Set

  Send_Set(send_chans=[]){

    send_chans.map((chan){
        return new Select_Case(chan, SEND)
    })

    @_cases = send_chans
    @_send_lock = new Mutex()
  }

  function send(val){
    @_send_lock.lock()

    for case in @_cases do
        case.value = val
    end

    select(@_cases)

    @_send_lock.unlock()
  }

  function close_all(){
    for case in @_cases do
      close(case.chan)
    end
  }

  function add(chan){
    @_send_lock.lock()
    @_cases.push(new Select_Case(chan, SEND))
    @_send_lock.unlock()
  }

  function channels(){
    var chans = []

    for case in @_cases do
      chans.push(case.chan)
    end

    return chans
  }

end
