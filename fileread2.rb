# fileread2.rb

open "readwrite.rb", "r" do |f|
    while line = f.gets
        puts line
    end
end
