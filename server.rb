#!/usr/bin/env ruby

require 'webrick'
include WEBrick

dir = Dir::pwd
port = 3000

puts "URL: http://localhost:#{port}"

s = HTTPServer.new(
  :BindAddress  => '0.0.0.0',
  :Port         => port,
  :DocumentRoot => dir
)

trap("INT"){ s.shutdown }
s.start
