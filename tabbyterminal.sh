#!/bin/sh
#
# TabbyTerminal.sh
# A small script to give you more control over tabs in terminal
# 
# USAGE: 
# . tabbyterminal.sh [path] [command]
#
# If no parameters are passed in, it will open a new tab in terminal with the current working directory
# If a path is passed in it will open a new terminal tab and attempt to cd to that path
# If a command is passed in, it will attempt to execute the command after the new tab has been opened and the directory set
#
# Copyright © 2008 Adam Miller
# Send feedback to heyadammiller@gmail.com 
#
# This script is provided as is. Feel free to modify it however you like.

if [ "x-x" = x"$1" ]; then
    EXIT="; exit"; shift;
fi

if [[ -d "$1" ]]; then
    WD=`cd "$1"; pwd`; shift;
else
    WD="'`pwd`'";
fi

COMMAND="cd $WD; $@"
echo "$COMMAND $EXIT"

osascript<<END
try
    tell application "Terminal"
				tell application "System Events" to tell process "Terminal" to keystroke "t" using command down
        do script with command "$COMMAND $EXIT" in window 1
    end tell
end try
END