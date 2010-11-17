#!/usr/bin/env coffee
cgi = require "/root/sites/coffee-cgi/cgi2.coffee"
cgi.handle  (req, resp) ->
  resp.write JSON.stringify req._get
  resp.write JSON.stringify req._post
