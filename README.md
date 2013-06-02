Python-SimpleHTTPServer-BASH-Script
===================================

A BASH script for running and shutting down python's SimpleHTTPServer with some bonus features.

I needed a quick and simple way to get around cross-origin XMLHttpRequest's same origin policy. Running SimpleHTTPServer from the command line is easy enough but I wanted a little more abstraction.

######Features
- Detects if the server is already running beforehand and prompts to kill the process
- Initializes the server in the current directory
- Prompts the user to load the server's location in the default browser
- Allows the user to shut down the server when it's no longer required
