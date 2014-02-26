source /opt/boxen/env.sh
bind -f /Users/troyshields/Documents/Bash/bashprofile/.inputrc

export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/Home/';

export CLICOLOR=1

#Aliases
#Directory traversal
alias l='ls -a'
alias c='clear'
alias ..='cd ..'
alias gh='cd ~'

#Vi shortcut
alias sv='sudo vi'

#Postgres
postgres_db='/Users/troyshields/Library/PostgreSQL/data'
alias start_postgres="pg_ctl -D $postgres_db start"
alias stop_postgres="pg_ctl -D $postgres_db stop"

#Dev
alias se='sudo /Applications/eclipse/Eclipse.app/Contents/MacOS/eclipse'

#Bash profile
prfl_file='/Users/troyshields/Documents/Bash/bashprofile/.profile'
alias prof="vi $prfl_file"
alias reload="source $prfl_file"
