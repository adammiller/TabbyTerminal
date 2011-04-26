#!/bin/sh
#
#     /\__/\       _____      _      _          _____                                    _   
#    /`    '\     (_   _)    ( )    ( )        (_   _)                    _             (_ ) 
#  === 0  0 ===     | |   _ _| |_   | |_    _   _| |   __  _ __  ___ ___ (_) ___     _ _ | |
#    \  --  /       | | /'_` ) '_`\ | '_`\ ( ) ( ) | /'__`\ '__)' _ ` _ `\ |' _ `\ /'_` )| |
#   /        \      | |( (_| | |_) )| |_) )| (_) | |(  ___/ |  | ( ) ( ) | | ( ) |( (_| || |
#  /          \     (_)`\__,_)_,__/'(_,__/'`\__, |_)`\____)_)  (_) (_) (_)_)_) (_)`\__,_)___)
# |            |                             ( )_| | 
#  \  ||  ||  /                              `\___/'
#   \_oo__oo_/#######o
# 
# INSTALL SCRIPT
# -- view the full docs on github https://github.com/adammiller/TabbyTerminal.sh
#

# Download and unpack the script
cd ~/Downloads && curl -s http://heyadammiller.com/tabbyterminal/tabbyterminal.tar.gz | tar xzf -
# move the script to Library/Scripts/
mkdir -p ~/Library/Scripts/TabbyTerminal/
mv tabbyterminal.sh ~/Library/Scripts/TabbyTerminal/tabbyterminal.sh
# alias the command 'new' to tabbyterminal 
printf "\nalias new='. ~/Library/Scripts/TabbyTerminal/tabbyterminal.sh'" >> ~/.bash_profile
# reload your bash profile
. ~/.bash_profile