# httpclient.rb

# http://www.is.kyusan-u.ac.jp/~toshi/index.html

# URL:
# <scheme>://<hostname>/<path>
# scheme: http
# hostname: www.is.kyusan-u.ac.jp
# path: /~toshi/index.html

require "socket"

host="www.is.kyusan-u.ac.jp"
port=80
path="/~toshi/index.html"

sock=TCPSocket.open host, port
sock.puts "GET #{path}"

while line=sock.gets
    puts line
end

sock.close
