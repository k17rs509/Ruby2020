# httpclient11head.rb
# GET 命令を使ってヘッダ情報だけを表示

require "socket"

host=ARGV[0]
port=80
path=ARGV[1]

TCPSocket.open host, port do |sock|
    sock.puts "GET #{path} HTTP/1.1"
    sock.puts "HOST: #{host}"
    sock.puts "Connection: close"
    sock.puts ""

    while line=sock.gets
        line.chomp!
#        p line
        if line == ""
            break
        end
        puts line
    end
end

# HTTP/1.0
# HTTP/1.1