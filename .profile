source /opt/boxen/env.sh
bind -f /Users/troyshields/Documents/Bash/Profile/.inputrc

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

#Bash profile
prfl_file='/Users/troyshields/Documents/Bash/Profile/.profile'
alias prof="sudo vi $prfl_file"
alias reload="source $prfl_file"
