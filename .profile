source /opt/boxen/env.sh
bind -f /Users/troyshields/Documents/sh/bashprofile/.inputrc

export HISTFILESIZE=1000000;

export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home/';

export CLICOLOR=1

export PATH=$PATH:/Users/troyshields/Library/depot_tools
export PATH=$PATH:/Users/troyshields/Documents/scripts/com.jive.v5.scripts
export PATH=$PATH:/Users/troyshields/Documents/sh/scripts

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Documents/device.ninja/shuriken
source /usr/local/bin/virtualenvwrapper.sh

export DEVELOPMENT=true
export AWS_ACCESS_KEY_ID=AKIAJV42JHLB3D7YQJGQ
export AWS_SECRET_ACCESS_KEY=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

#Aliases
#Directory traversal
alias l='ls -alh'
alias c='clear'
alias ..='cd ..'
alias gh='cd ~'
alias gv='cd ~/Documents/workspace/com.jive.ftw.voicemail'
alias nfs='sudo mount -t nfs -o resvport 10.99.0.3:/NFSStorage/pbx /cluster/nfs'
alias prod_nfs='sudo mount -t nfs -o resvport 10.141.0.14:/NFSStorage/pbx /prod/nfs'

#Network
alias pi='ssh tshields@50.186.74.99'
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias ip='curl http://ipecho.net/plain; echo'

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
alias pvu-core='ssh admin@172.17.9.141'
alias pvu-services='ssh admin@172.17.9.130'
alias orm-core='ssh admin@172.31.29.141'
alias orm-services='ssh admin@172.31.29.130'
alias pvu-deploy='ssh admin@bm4.pvu "sudo virt-jive-recreate voicemail-1";ssh admin@bm1.pvu "sudo virt-jive-recreate voicemail-core-1";'
alias orm-deploy='ssh admin@bm13.ops "sudo virt-jive-recreate voicemail-test-1";ssh admin@bm13.ops "sudo virt-jive-recreate voicemail-core-test-1";'
alias orm-jifdeploy='ssh admin@bm12.ops "sudo virt-jive-recreate v5-jif-test-1"'
alias pvu-jifdeploy='ssh admin@bm1.pvu "sudo virt-jive-recreate v5-jif-1"'
alias shrkn='cd /Users/troyshields/Documents/device-ninja/shuriken/shuriken'
alias ngrep_port='sudo ngrep -d any -W byline -P  -p -q port $1'

#Misc
alias downloadminecraft='scp -i ~/.ssh/minecraft.pem -r ec2-user@54.186.129.199:/home/ec2-user/minecraft/largebiomes2* ~/minecraft/largebiomes2/'
alias grep='grep --color=auto'

#Bash profile
prfl_file='/Users/troyshields/Documents/sh/bashprofile/.profile'
alias prof="vi $prfl_file"
alias reload="source $prfl_file"
export JIM_APIKEY=559e08b65d0dc8eb3cd99304615a1dcc
export COG_KEY=30e9f84bcf1452bb32ac8b09d4c16ac3b77b328e

# The next line updates PATH for the Google Cloud SDK.
source '/Users/troyshields/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/troyshields/google-cloud-sdk/completion.bash.inc'

#minecraft
alias minecraft='java -d64 -Xms4096M -Xmx5130M -jar /Applications/Minecraft.app/Contents/Resources/Java/Bootstrap.jar'
