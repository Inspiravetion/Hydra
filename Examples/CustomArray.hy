module Custom_BuiltIns

class CustomArray extends Array

  operator [] do //cusArr[0] = 2
    type : 'circumfix'
    assigmnent : true
    action : (index, newval){
      this.set(index, newval)
    }
  end

  operator [] do //cusArr[3]
    type : 'circumfix'
    action : (index){
      return this.get(index)
    }
  end

  operator [] do //cusArr[2:5], cusArr[2:], cusArr[:5], cusArr[:]
    type : 'circumfix'
    delim : ':'
    argc : 2 //if this is positive then the delimited args will be positional and thus they
             //will get passed into the action function in their given order
    action : (first, last){
      if first and last then 
        return this.subset(first, last)
      else if first then
        return this.subset(first)
      else if last then
        return this.subset(0, last)
      else
        return this.copy()
      end
    }
  end

  function new(){
    super(this);
  }
 
  function parallel_for_each(callback){
    var c, done;
    c = <<>>;
    done = 0;

    for i, val in this do
      spawn (){
        this[i] = callback(val);
        c << 1;
      }
    end

    while done < this.length do
      done += << c;
    end
  }

  private function set(i, val){
    this[i] = val;
  }

  private function get(i){
    return this[i];
  }

  private function copy(){
    var dup = new CustomArray();
    
    this.for_each((val){
      dup.push(val);
    });

    return dup;
  }

  private function subset(startIndex=0, endIndex){
    var currInd, subArray;
    currInd = start;
    endIndex ||= this.length;
    subArray = [];

    while currInd <= endIndex do
      subArray.push(this[currInd]);
      currInd++;
    end

    return subArray;
  }

end