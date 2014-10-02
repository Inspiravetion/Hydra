
function add(a, b){
    return a + b;
}

function add_and_mult(a, b){
    return a + b, a * b;
}

print(add_and_mult(5, 5));

print([1, true, add_and_mult(5, 6)]);