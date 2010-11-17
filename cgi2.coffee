cgi = require "./cgi.js"
qs = require "querystring" # https://github.com/jazzychad/querystring.node.js
exports.handle = (func) ->
  server = cgi.createServer (req, resp) ->
    #response.writeHead 200, {"Content-type": "text/html"}
    
    stdin = process.openStdin()
    post = []
    stdin.on "data", (chunk) ->
      post.push chunk
    stdin.on "end", () ->
      post = post.join("")
      post = qs.parse post
      get = qs.parse process.env["QUERY_STRING"]
      req._post = post
      req._get = get
      resp.writeHead 200, {'Content-type' : 'text/html'} 
      func req, resp
  server.listen()
