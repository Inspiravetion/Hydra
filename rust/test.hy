
function add(a, b){
    return a + b;
}

function add_and_mult(a, b){
    return a + b, a * b;
}

println(add_and_mult(5, 5));

println([1, true, add_and_mult(5, 6)]);

var a = { "arr" : [], "avc" : true };
println(a);

var b;

println(b);
b = 14;
println(b);