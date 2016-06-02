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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

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

#
# Ruby using rbenv
#
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export JAVA_HOME=$(/usr/libexec/java_home)

#
# Load antigen.zsh
#
source $HOME/.zprezto/antigen.zsh

antigen bundle Tarrasch/zsh-autoenv

antigen apply
