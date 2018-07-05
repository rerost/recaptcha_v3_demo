require "webrick"
require "json"
require "faraday"

root = File.expand_path "/Users/user/Project/slide_demo"

server = WEBrick::HTTPServer.new Port: 3000, DocumentRoot: root, HTTPVersion: WEBrick::HTTPVersion.new("1.1")
server.mount_proc "/check" do |req, res|
  token = req.body[6..-1] # req.body == "token=token"
  conn = Faraday.new(:url => "https://www.google.com/")
  result = conn.post "/recaptcha/api/siteverify", {
    :secret => "RECAPTCHA_SECRET_KEY",
    :response => token 
  }
  res.body = JSON.parse(result.body).to_s
end
server.start
