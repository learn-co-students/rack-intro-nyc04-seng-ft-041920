require 'rack'

my_server = Proc.new do
  [200, { 'Content-Type' => 'text/html' }, ['<em>Hello I\'m Senada</em>']]
end
 
run my_server
