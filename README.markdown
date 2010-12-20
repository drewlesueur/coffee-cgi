Coffee-cgi
==========
Based on the project  https://github.com/pufuwozu/node-cgi


These are the files required to run coffeescript files as a cgi script

So files ending in `.cs` will be ran, kind of like your used to with `.php` files
cgi.js was taken from https://github.com/pufuwozu/node-cgi

Also has support for express.

1. Install http://nodejs.org
2. Install npm
3. Install express (optional)
4. Update your apaches `http.conf` or your directory's `.htaccess` file to include content similar to the `example.htaccess` file from this repository
5. See `index.cs` as an example of running a simple coffeescript cgi script
or see http://coffee-cgi.the.tl/index.cs
6. See `express-example.cs` as an example of an express framework cgi script
or see http://coffee-cgi.the.tl/express-example.cs

Why this project?
-------
Because sometimes you just want one file to do one thing without running a whole
new server

Because you already have apache running on your server and you want to easily try
out node.js.

Why not this project?
--------
You want to run an actual node.js server.
(If you have a server already running apache on port 80 see this post for how to
get a node.js server running as well
http://fortnightlabs.posterous.com/deploying-with-nodejs)


