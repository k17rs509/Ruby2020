# httpclient11body.rb
# GET 命令を使ってボディ情報だけを表示

require "socket"

host=ARGV[0]
port=80
path=ARGV[1]

TCPSocket.open host, port do |sock|
    sock.puts "GET #{path} HTTP/1.1"
    sock.puts "HOST: #{host}"
    sock.puts "Connection: close"
    sock.puts ""

    is_body=false
    while line=sock.gets
        line.chomp!
        if line == ""
            is_body=true
            next
        end
        puts line if is_body
    end
end

# HTTP/1.0
# HTTP/1.1