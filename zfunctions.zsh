#
# Executes commands at the end of a session.
#
# Authors:
#   Subho Halder <subho.halder@gmail.com>
#
#

#
# One command for all archive types
#
x () {
   if [ -f "$1" ] ; then
       case "$1" in
           *.tar.bz2)   tar xvjf "$1"    ;;
           *.tar.gz)    tar xvzf "$1"    ;;
           *.bz2)       bunzip2 "$1"     ;;
           *.rar)       unrar x "$1"     ;;
           *.gz)        gunzip "$1"      ;;
           *.tar)       tar xvf "$1"     ;;
           *.tbz)      	tar xvjf "$1"    ;;
           *.tbz2)      tar xvjf "$1"    ;;
           *.tgz)       tar xvzf "$1"    ;;
           *.zip)       unzip "$1"       ;;
           *.Z)         uncompress "$1"  ;;
           *.7z)        7z x "$1"        ;;
           *)           echo "don't know how to extract '"$1"'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

#
# Mailpile start
#
mp () {
  ~/Documents/mailpile/mp
}


# Functions to activate environement variables
# Example:
#
#function act {
#    source ~/ENV/folder/bin/activate
#    cd ~/Projects/folder
#}
#

function sherlock {
    source ~/ENV/sherlock/bin/activate
    cd $HOME/Appknox/sherlock
}

function irene {
    source ~/ENV/irene/bin/activate
    cd $HOME/Appknox/irene
}
