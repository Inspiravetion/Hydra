function double(a){
    return a * 2
}

var a = double 2 + 2;

print_int(a);

function minus(a, b){
    return a - b
}

gen function squares(n){
    var d;
    var a, b, c = 1;
    
    a = 2;
    yield a, d, b;

    yield b, c, a;
    b = 2;
}

operator[0] times(a, b){
    return a * b
}

print_int(1 + 2 * 3 / 2 - 1 times 10);

for i in 0 upto 3 do
    var padding = 10;

    for j in 0 through i do
        print_int(i);
        break;
    end

    continue;
    i = 100;
    print_int(i);
end

function plus(a, b){
    return a + b
}

var added = plus(1200, 34);
print_int(added);

var i, j = 11, 12;
print_int(i + j);

i, j = 21, 22;
print_int(i + j);

var done = 0;
while done <= 5 do
    print_int(1000000);
    done = done + 1;
end

var abc;

if i > 1000 then
    print_int(i);
else if 1 < 100 then 
    abc = 2;
    print_int(100);
else
    print_int(1000);
end

print_int(abc);

print_int(minus(10, 100));