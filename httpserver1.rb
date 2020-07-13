# httpserver1.rb

require 'socket'

def server sock
    while line=sock.gets
        line.chomp!
        break if line==""
        p line
        sock.puts "receive: #{line}"
    end
    sock.close
end

TCPServer.open 80 do |s|

    while true
        Thread.new s.accept do |sock|
            server sock
        end
    end
end
