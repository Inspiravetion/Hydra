for i in 0 upto 1 + 2 * 3 / 2 - 1 times 2 do
    var padding = 10;

    for i in 0 through i do
        print_int(i + 1 - 1 + padding);
        break;
    end

    continue;
    i = 100;
    print_int(i);
end

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