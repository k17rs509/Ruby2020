# httpclient11uri.rb

require "socket"

proto,dummy,host,*arg=ARGV[0].split "/"
path=arg.join "/"
port=80


TCPSocket.open host, port do |sock|
    sock.puts "GET /#{path} HTTP/1.1"
    sock.puts "HOST: #{host}"
    sock.puts "Connection: close"
    sock.puts ""

    while line=sock.gets
        puts line
    end
end

# HTTP/1.0
# HTTP/1.1