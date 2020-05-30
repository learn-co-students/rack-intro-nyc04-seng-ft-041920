require 'rack'

my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ["<div style='width: 300px; margin: 0 auto; margin-top: 50px;'><em style='font-size: 40px;'>Hello, Marlon!</em><div>"]]
end

run my_server