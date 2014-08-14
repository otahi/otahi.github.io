#!/usr/bin/env ruby
require 'webrick'

http_server = WEBrick::HTTPServer.new(Port: 10080, DocumentRoot: '.', BindAddress: '127.0.0.1')
http_server.start
