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

bindkey -v
bindkey "^R" history-incremental-search-backward

fpath=(/usr/local/share/zsh-completions $fpath)

export PATH=$PATH:/usr/local/opt/go/libexec/bin

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
