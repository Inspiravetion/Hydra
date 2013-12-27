#!/usr/bin/env ruby

`cd ../Interpreter`
curr_dir = `pwd`

cmd = "export GOPATH=#{curr_dir}"

if system(cmd) then
    build_cmd = "go build ../playground/#{ARGV[0]}.go"
    puts(system(build_cmd) ? "successful build...": "unsucessful build...")
else
    puts "couldnt set gopath..."
    puts "exiting..."
end