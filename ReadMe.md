TabbyTerminal.sh
==================

A small shell script to give you more control over tabs in Terminal.app

Allows you to run a command to open a new tab in your current working directory or a directory you specify. Also allows for passing commands to be run immediately in the new tab. 

Installing
----------

*Note: These instructions assume you're working on a standard Mac OS X setup.*

	# Download and unpack the script
	cd ~/Downloads && curl -s http://heyadammiller.com/tabbyterminal/tabbyterminal.tar.gz | tar xzf -
	# move the script to Library/Scripts/
	mkdir -p ~/Library/Scripts/TabbyTerminal/
	mv tabbyterminal.sh ~/Library/Scripts/TabbyTerminal/tabbyterminal.sh
	# alias the command 'new' to tabbyterminal 
	printf "\nalias new='. ~/Library/Scripts/TabbyTerminal/tabbyterminal.sh'" >> ~/.bash_profile
	# reload your bash profile
	. ~/.bash_profile


License
-------

http://unlicense.org/ - i.e. do what you want with it :-)


Usage
-----

Tabby Terminal is flexible, and allows you to string on just about any command. If the first argument is a directory, your new terminal tab will start in that directory. 

	new [path] [command]


Examples of use
---------------

Run it without any arguments to open a new tab in your current working directory
	new 

Run it specifying the directory you'd like your new tab to start in
	new ~/Sites/my-blog

Pass it before a command you'd like to be run immediately in the new tab
	new rails server
	
Or go for the gusto and pass a directory and a command 
	new django_app manage.py activate
	
	
Known Problems
---------------
TabbyTerminal uses applescript to control the terminal tabs, and as such, can be slow, and a bit lacking in intelligence. If you switch applications before the applescript completes, it will run the key command 'command + t' in the application you just switched to. 