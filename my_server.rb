require 'rack'
 
class MyServer
  def call(env)
    return [200, { 'Content-Type' => 'text/html' }, pretty_response]
  end

  def pretty_response
    (Time.now.to_i % 2).zero? ?  ["<div style='width: 300px; margin: 0 auto; margin-top: 50px;'><em style='font-size: 40px;'>Hello, Marlon!</em><div>"] : ["<div style='width: 300px; margin: 0 auto; margin-top: 50px;'><strong style='font-size: 40px;'>Hello, Marlon!</strong><div>"]
  end
end