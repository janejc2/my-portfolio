require 'webrick'

server = WEBrick::HTTPServer.new(
  Port: 3000,
  DocumentRoot: __dir__,
  AccessLog: []
)

trap('INT') { server.stop }
server.start
