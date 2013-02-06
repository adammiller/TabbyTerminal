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
# -- view the full docs on github https://github.com/adammiller/TabbyTerminal
#


# save the cwd for returning the user to later
  CWD=`pwd`
# Download and unpack the script
  cd ~/Downloads && curl -sO https://raw.github.com/adammiller/TabbyTerminal/master/tabbyterminal.sh
  echo "*** Downloading TabbyTerminal..."
  
# move the script to Library/Scripts/

  mkdir -p ~/Library/Scripts/TabbyTerminal/
  mv tabbyterminal.sh ~/Library/Scripts/TabbyTerminal/tabbyterminal.sh
  echo "*** Installing to ~/Library/Scripts/TabbyTerminal/..."
  echo "***"
  echo "***"
  echo "***"
  echo "***"
  echo "*** Install complete."
  echo "***"
  echo "*** Add the following alias to your .profile script or .dotfiles:"
  echo "*** alias new='. ~/Library/Scripts/TabbyTerminal/tabbyterminal.sh'"

# Return the user to their previous cwd
  cd $CWD