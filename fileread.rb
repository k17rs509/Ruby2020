# fileread.rb

f = open "readwrite.rb", "r"

while line = f.gets
    puts line
end

f.close
