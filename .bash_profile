#!/bin/bash
alias ll='ls -AlFG'
alias vnpm='npm --registry http://192.168.211.100:5984/registry/_design/app/_rewrite'
alias ssh-alex="ssh alex-mbp.local"
alias nh="node --harmony"
alias tree="tree -ClF"
alias node_ext="node ~/scripts/ext.js"
alias ni="ssh -i /Users/alex/aws/awebb-payroll-test2.pem -L 5858:192.168.211.190:5858"

source ~/.shell_prompt.sh
# export NODE_ENV=localdev

# bashmarks
source ~/.local/bin/bashmarks.sh

# URL Aliases
export couch="http://127.0.0.1:5984/"

# echo >>
complete -C aws_completer aws

function kill-remote(){
  git branch -d -r "$1"
  git config --unset branch."$1".remote
  git config --unset branch."$1".merge
}

function ssh-aws () {
  ssh -i "/Users/alex/aws/awebb-payroll-test2.pem" "ubuntu@192.168.211.""$1"
}

function sftp-aws () {
  sftp -i "/Users/alex/aws/awebb-payroll-test2.pem" "ubuntu@192.168.211.""$1"
}

# alias ssh-aws="
# alias ssh-aws2="ssh -i ~/aws/awebb-payroll-test2.pem ubuntu@192.168.211.217"
# alias sftp-aws="sftp -i ~/aws/awebb-payroll-test2.pem ubuntu@192.168.211."
# alias sftp-aws2="sftp -i ~/aws/awebb-payroll-test2.pem ubuntu@192.168.211.217"

export NVM_DIR="/Users/alex/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
nvm use stable

export NODE_ENV="localdev"

export HISTCONTROL=ignoreboth:erasedups
