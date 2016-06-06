#source /opt/boxen/env.sh
bind -f /Users/troyshields/Documents/sh/bashprofile/.inputrc

export HISTFILESIZE=1000000;

export JAVA_HOME=$(/usr/libexec/java_home);

export CLICOLOR=1

export PATH=$PATH:/Users/troyshields/Library/depot_tools
export PATH=$PATH:/Users/troyshields/Documents/scripts/com.jive.v5.scripts
export PATH=$PATH:/Users/troyshields/Documents/sh/scripts
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"
export PATH="/Users/troyshields/go_appengine:$PATH"
export PATH="~/go/bin:$PATH"


#Go code visualizer
#export PATH="~/go/src/github.com/CodeHipster/go-code-visualizer:$PATH"
#alias govis="go-code-visualizer; cat dot-visual.gv | pbcopy; open -a \"/Applications/Google Chrome.app\" 'http://mdaines.github.io/viz.js/'"
export PATH="~/go/src/github.com/troylelandshields/govis:$PATH"

#export GOROOT=$HOME/go"
#export PATH=$PATH:$GOROOT/bin

##export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/Documents/device.ninja/shuriken
#source /usr/local/bin/virtualenvwrapper.sh

export DEVELOPMENT=true

#Aliases
#Directory traversal
alias l='ls -alh'
alias c='clear'
alias ..='cd ..'
alias gh='cd ~'
alias gohome='cd ~/go/src/github.com/troylelandshields'
alias addtopath='export PATH=${PWD}:$PATH'

#Network
alias pi='ssh tshields@50.186.74.99'
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias ip='curl http://ipecho.net/plain; echo'

#Vi shortcut
alias sv='sudo vi'

#Postgres
postgres_db='/usr/local/var/postgres'
alias start_postgres="pg_ctl -D $postgres_db start"
alias stop_postgres="pg_ctl -D $postgres_db stop"

#Dev
alias ngrep_port='sudo ngrep -d any -W byline -P  -p -q port $1'


#GIT
source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]$(__git_ps1 "(%s)")$ \[$(tput sgr0)\] \n"
export GOPATH=$HOME/go

#Misc
alias grep='grep --color=auto'

#Bash profile
prfl_file='/Users/troyshields/Documents/sh/bashprofile/.profile'
alias prof="vi $prfl_file"
alias reload="source $prfl_file"

# The next line updates PATH for the Google Cloud SDK.
source '/Users/troyshields/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/troyshields/google-cloud-sdk/completion.bash.inc'

#minecraft
alias minecraft='java -d64 -Xms4096M -Xmx5130M -jar /Applications/Minecraft.app/Contents/Resources/Java/Bootstrap.jar'


#open visual studio code
code () {  
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}

GO15VENDOREXPERIMENT=1
