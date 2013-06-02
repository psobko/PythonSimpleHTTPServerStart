#!/bin/bash

echo "-----Starting python SimpleHTTPServer-----"

#check for existing process and prompt if found
existing_pid=$(ps aux | grep '[p]ython -m SimpleHTTPServer' | awk '{print $2}')
if [[ ! -z "$existing_pid" ]]
then
  echo $existing_pid
	echo "WARNING: exiting SimpleHTTPServer running"
	echo "         kill it? [y]/[n]"
	read answer
	if [[ $answer = y ]]
		then
		#kill the existing process
		kill $existing_pid
	else
		#exit the script
		exit 0
	fi
fi

#set the current dir as the working directory
python -m SimpleHTTPServer 1337 > /dev/null 2&>1&

#get the PID for the process
server_pid=$!

echo "   Serving HTTP on http://0.0.0.0:1337"

#prompt to open in browser
sleep 0.5s;
echo "------------------------------------------"
echo "   Open it up in the browser? [y]/[n]"
read answer
if [[ $answer = y ]]
then
    open http://0.0.0.0:1337
fi

#wait for user input
read -p "    Press [enter] to stop the server"
echo "    Stopping the server..."
echo "------------------------------------------"

#die python die!
kill $server_pid;

#psobko
