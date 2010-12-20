#!/usr/bin/env coffee
cgi = require "/root/sites/coffee-cgi/cgi"
sys = require "sys"
http = require "http"
qs = require "querystring" # https://github.com/jazzychad/querystring.node.js

http.IncomingMessage = cgi.Request
http.ServerResponse = cgi.Response

connect = require "connect"
express = require "express"
connect.Server.prototype.listen = (port, host) ->
express.Server.prototype.listen = () ->
  this.registerErrorHandlers()

app = express.createServer()

app.use (req, res, next) ->
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
    next()

exports.run = (func) ->
  func app
  app.emit 'request', new http.IncomingMessage(), new http.ServerResponse() 
