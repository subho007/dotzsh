#
# Executes commands at the end of a session.
#
# Authors:
#   Subho Halder <subho.halder@gmail.com>
#
#
unalias gg
unalias gs
unalias gCa
unalias gS
unalias run-help
autoload run-help
HELPDIR=/usr/local/share/zsh/help

export NVM_DIR=~/.nvm

fpath=(/usr/local/share/zsh-completions $fpath)

source $(brew --prefix nvm)/nvm.sh

export PATH=$PATH:/usr/local/opt/go/libexec/bin

source /usr/local/share/zsh/site-functions/_aws

source /usr/local/share/zsh/site-functions

# 
# Load private configuration file
#

if [ -f $HOME/.zprezto/.localrc ]; then
  source $HOME/.zprezto/.localrc
fi

#
# Python Hostory and autocompletion support
#

export PYTHONSTARTUP=$HOME/.pythonrc

#
# Android Source
#
export ANDROID_HOME=$HOME/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/build-tools/21.1.2
export PATH=$PATH:$ANDROID_HOME/platform-tools
