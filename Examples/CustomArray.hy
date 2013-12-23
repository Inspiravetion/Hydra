module Custom_BuiltIns

class CustomArray extends Array

  operator /[(\d+)]\s*=\s*(\w+)/ = set($0, $1) end             //cusArr[0] = 2

  operator /[(\d+)]/             = get($0) end                 //cusArr[3]

  operator /[(\d+):(\d+)]/       = subset($0, $1) end          //cusArr[2:5]

  operator /[(\d+):]/            = subset($0, this.length) end //cusArr[2:]

  operator /[:(\d+)]/            = subset(0, $0) end           //cusArr[:5]

  operator /[:]/                 = copy() end                  //cusArr[:]

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