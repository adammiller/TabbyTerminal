# Download and unpack the script
cd ~/Downloads && curl -s http://heyadammiller.com/tabbyterminal/tabbyterminal.tar.gz | tar xzf -
# move the script to Library/Scripts/
mkdir -p ~/Library/Scripts/TabbyTerminal/
mv tabbyterminal.sh ~/Library/Scripts/TabbyTerminal/tabbyterminal.sh
# alias the command 'new' to tabbyterminal 
printf "\nalias new='. ~/Library/Scripts/TabbyTerminal/tabbyterminal.sh'" >> ~/.bash_profile
# reload your bash profile
. ~/.bash_profile