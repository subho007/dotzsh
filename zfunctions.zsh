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

function sherlock3 {
    source ~/ENV/sherlock3/bin/activate
    cd $HOME/Appknox/sherlock
}

function irene {
    source ~/ENV/irene/bin/activate
    cd $HOME/Appknox/irene
}

function irene2 {
    source ~/ENV/irene2/bin/activate
    cd $HOME/Appknox/irene
}

function hawkins {
    source ~/ENV/hawkins/bin/activate
    cd $HOME/Appknox/hawkins
}

function androguard {
    source ~/ENV/androguard/bin/activate
    cd $HOME/Appknox/androguard
}

function sherlock2 {
    source ~/ENV/sherlock2/bin/activate
    cd $HOME/Appknox/sherlock2
}

function m {
    if [[ $1 = "" ]]; then
        mvim .
    else
        mvim $*
    fi
}

function search {
    grep -irl \
        --exclude=\*.{pyc,swp,un~,png,jpg} \
        --exclude-dir=".git" \
        --exclude-dir="node_modules" \
        --exclude-dir="bower_components" \
        --exclude-dir="dist" \
        --exclude-dir="tmp" \
        --exclude-dir=".sass_cache" \
        --exclude-dir="Appknox" \
        --exclude-dir="build" \
        --color "$*" .
}

# Start an HTTP server from a directory, optionally specifying the port
function server() {
    local port="${1:-8000}"
    sleep 1 && open "http://localhost:${port}/" &
    # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
    # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
    python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

function tunnel {
    ngrok -subdomain=subho007 $1
}

function rmpyc {
	find . -name "*.pyc" -exec rm -rf {} \;
}

function rmed {
	find . -empty  -type d ! -path "./.git*" -delete
}
