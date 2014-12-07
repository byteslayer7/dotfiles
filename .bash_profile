alias ll='ls -AlFG'
alias vnpm='npm --registry http://192.168.211.100:5984/registry/_design/app/_rewrite'
alias ssh-alex="ssh alex-mbp.local"
alias nh="node --harmony"
alias tree="tree -ClF"
alias node_ext="node ~/scripts/ext.js"

source ~/.shell_prompt.sh
export NODE_ENV=localdev

# bashmarks
source ~/.local/bin/bashmarks.sh

# URL Aliases
export couch="http://127.0.0.1:5984/"

# echo >>
complete -C aws_completer aws
