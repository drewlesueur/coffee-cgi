#!/usr/bin/env coffee
cgi = require "./express-cgi.coffee"

cgi.run (app) ->
  app.use (req, res, next) ->
    res.send """
      <h1>hello world</h1>
      <a href="express-example.coffee">view source</a>
    """
