source /opt/boxen/env.sh
bind -f /Users/troyshields/Documents/Bash/bashprofile/.inputrc

export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_21.jdk/Contents/Home/';

export CLICOLOR=1

#Aliases
#Directory traversal
alias l='ls -alh'
alias c='clear'
alias ..='cd ..'
alias gh='cd ~'
alias gv='cd ~/Documents/workspace/com.jive.ftw.voicemail'
alias nfs='sudo mount -t nfs -o resvport 10.99.0.3:/NFSStorage/pbx /cluster/nfs'

#Network
alias pi='ssh tshields@50.186.74.99'

#Vi shortcut
alias sv='sudo vi'

#Postgres
postgres_db='/Users/troyshields/Library/PostgreSQL/data'
alias start_postgres="pg_ctl -D $postgres_db start"
alias stop_postgres="pg_ctl -D $postgres_db stop"

#Dev
alias se='sudo /Applications/eclipse/Eclipse.app/Contents/MacOS/eclipse'
alias mvn_new='/opt/boxen/homebrew/Cellar/maven/3.1.1/bin/mvn'
alias clean_workspace='sudo find /Users/troyshields/Documents/workspace -name 'target' -exec rm -rf {} \;'

#Misc
alias downloadminecraft='scp -i ~/.ssh/minecraft.pem -r ec2-user@54.186.129.199:/home/ec2-user/minecraft/largebiomes2* ~/minecraft/largebiomes2/'

#Bash profile
prfl_file='/Users/troyshields/Documents/Bash/bashprofile/.profile'
alias prof="vi $prfl_file"
alias reload="source $prfl_file"
