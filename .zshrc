# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/mattrichter/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="funky"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"
# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"
# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"
# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"
# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"
# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git kube-ps1)
source $ZSH/oh-my-zsh.sh
# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
HISTFILE=~/.zsh_history
HISTSIZE=999999999
SAVEHIST=$HISTSIZE
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias v='cd ~/validity'
alias ad=aquaduck
alias tf=terraform
alias k=kubectl
alias kc='echo "Enter context: "; read context; k config set-context --current --namespace=$context'
alias ckcn='echo $KOPS_CLUSTER_NAME | pbcopy'
alias cksn='echo $KOPS_SHORT_NAME | pbcopy'
export GITHUB_TOKEN='redacted'
alias w1usbvp='export NAME=workload1.k8s.us-east-1.briteverify.validityhq.net
export KOPS_CLUSTER_NAME=workload1.k8s.us-east-1.briteverify.validityhq.net
export KOPS_STATE_STORE=s3://kubernetes-briteverify
export KOPS_SHORT_NAME=workload1-us-east-1-briteverify
$(aquaduck aws -p briteverify)
$(aquaduck auth kube $NAME -p briteverify)'
alias w2usbvp='export NAME=workload2.k8s.us-east-1.briteverify.validityhq.net
export KOPS_CLUSTER_NAME=$NAME
export KOPS_STATE_STORE=s3://kubernetes-briteverify
export KOPS_SHORT_NAME=workload2-us-east-1-briteverify
$(aquaduck aws -p briteverify)
$(aquaduck auth kube $NAME -p briteverify)'
alias w3usbvp='export NAME=workload3.k8s.us-east-1.briteverify.validityhq.net
export KOPS_CLUSTER_NAME=workload3.k8s.us-east-1.briteverify.validityhq.net
export KOPS_STATE_STORE=s3://kubernetes-briteverify
export KOPS_SHORT_NAME=workload3-us-east-1-briteverify
$(aquaduck aws -p briteverify)
$(aquaduck auth kube $NAME -p briteverify)'
alias w4usbvp='export NAME=workload4.k8s.us-east-1.briteverify.validityhq.net
export KOPS_CLUSTER_NAME=$NAME
export KOPS_STATE_STORE=s3://kubernetes-briteverify
export KOPS_SHORT_NAME=workload4-us-east-1-briteverify
$(aquaduck aws -p briteverify)
$(aquaduck auth kube $NAME -p briteverify)'
alias w1eubvp='export NAME=workload1.k8s.eu-west-1.briteverify.validityhq.net
export KOPS_CLUSTER_NAME=$NAME
export KOPS_STATE_STORE=s3://kubernetes-briteverify
export KOPS_SHORT_NAME=workload1-eu-west-1-briteverify
$(aquaduck aws -p briteverify)
$(aquaduck auth kube $NAME -p briteverify)'
alias w2eubvp='export NAME=workload2.k8s.eu-west-1.briteverify.validityhq.net
export KOPS_CLUSTER_NAME=$NAME
export KOPS_STATE_STORE=s3://kubernetes-briteverify
export KOPS_SHORT_NAME=workload2-eu-west-1-briteverify
$(aquaduck aws -p briteverify)
$(aquaduck auth kube $NAME -p briteverify)'
alias w2usbvs='export NAME=workload2.k8s.us-east-1.bv-sandbox.validityhq.net
export KOPS_CLUSTER_NAME=$NAME
export KOPS_STATE_STORE=s3://kubernetes-bv-sandbox
export KOPS_SHORT_NAME=workload2-us-east-1-bv-sandbox
export VAULT_ADDR=https://vault.us-east-1.bv-sandbox.validity.com
$(aquaduck aws -p bv-sandbox)
$(aquaduck auth kube workload2.k8s.us-east-1.bv-sandbox.validityhq.net -p bv-sandbox)'
alias infrpt='export NAME=infrastructure.k8s.tst.returnpath.net
export KOPS_CLUSTER_NAME=$NAME
$(aquaduck aws -p eo)
$(aquaduck auth kube $NAME -p eo)'
alias w1rpt='export NAME=workload1.k8s.tst.returnpath.net
export KOPS_CLUSTER_NAME=$NAME
$(aquaduck aws -p eo)
$(aquaduck auth kube workload1.k8s.tst.returnpath.net -p eo)'
alias w2rpt='export NAME=workload2.k8s.tst.returnpath.net
export KOPS_CLUSTER_NAME=$NAME
export KOPS_STATE_STORE=s3://kubernetes-eo-test
export KOPS_SHORT_NAME=workload2-test
export VAULT_ADDR=https://vault.tst.returnpath.net
export VAULT_TOKEN=redacted
$(aquaduck aws -p eo)
$(aquaduck auth kube workload2.k8s.tst.returnpath.net -p eo)'
alias w3rpt='export NAME=workload3.k8s.tst.returnpath.net
export KOPS_CLUSTER_NAME=$NAME
$(aquaduck aws -p eo)
$(aquaduck auth kube workload3.k8s.tst.returnpath.net -p eo)'
alias w4rpt='export NAME=workload4.k8s.tst.returnpath.net
export KOPS_CLUSTER_NAME=$NAME
$(aquaduck aws -p eo)
$(aquaduck auth kube workload4.k8s.tst.returnpath.net -p eo)'
alias infrpp='export NAME=infrastructure.k8s.returnpath.net
export KOPS_CLUSTER_NAME=$NAME
export KOPS_STATE_STORE=s3://kubernetes-eo
export KOPS_SHORT_NAME=infrastructure-prod
$(aquaduck aws -p eo)
$(aquaduck auth kube $NAME -p eo)'
alias w1rpp='export NAME=workload1.k8s.returnpath.net
export KOPS_CLUSTER_NAME=$NAME
$(aquaduck aws -p eo)
$(aquaduck auth kube workload1.k8s.returnpath.net -p eo)'
alias w2rpp='export NAME=workload2.k8s.returnpath.net
export KOPS_CLUSTER_NAME=$NAME
export KOPS_SHORT_NAME=workload2-prod
export KOPS_STATE_STORE=s3://kubernetes-eo
export VAULT_ADDR=https://vault.returnpath.net
export VAULT_TOKEN=redacted
$(aquaduck aws -p eo)
$(aquaduck auth kube workload2.k8s.returnpath.net -p eo)'
alias w3rpp='export NAME=workload3.k8s.returnpath.net
export KOPS_CLUSTER_NAME=$NAME
export VAULT_ADDR=https://vault.returnpath.net
export VAULT_TOKEN=redacted
$(aquaduck aws -p eo)
$(aquaduck auth kube workload3.k8s.returnpath.net -p eo)'
alias w4rpp='export NAME=workload4.k8s.returnpath.net
export KOPS_CLUSTER_NAME=$NAME
export VAULT_ADDR=https://vault.returnpath.net
export VAULT_TOKEN=redacted
$(aquaduck aws -p eo)
$(aquaduck auth kube workload4.k8s.returnpath.net -p eo)'
alias w1usvft='export NAME=workload1.k8s.us-east-1.vfe-test.validityhq.net
export KOPS_CLUSTER_NAME=$NAME
export KOPS_STATE_STORE=s3://kubernetes-vfe-test
export KOPS_SHORT_NAME=workload1-us-east-1-vfe-test
export VAULT_ADDR=https://vault.us-east-1.vfe-test.validityhq.net
export VAULT_TOKEN=redacted
$(aquaduck aws -p vfe-test)
export KUBECONFIG=~/.kube/config
kops export kubecfg'
alias w1usvfp='export NAME=workload1.k8s.us-east-1.vfe-prod.validityhq.net
export KOPS_CLUSTER_NAME=$NAME
export KOPS_STATE_STORE=s3://kubernetes-vfe-prod
export KOPS_SHORT_NAME=workload1-us-east-1-vfe-prod
export VAULT_ADDR=https://vault.us-east-1.vfe-prod.validityhq.net
export VAULT_TOKEN=redacted
$(aquaduck aws -p vfe-prod)
export KUBECONFIG=~/.kube/config
kops export kubecfg'
alias w2usvfp='export NAME=workload2.k8s.us-east-1.vfe-prod.validityhq.net
export KOPS_CLUSTER_NAME=$NAME
export KOPS_STATE_STORE=s3://kubernetes-vfe-prod
export KOPS_SHORT_NAME=workload2-us-east-1-vfe-prod
export VAULT_ADDR=https://vault.us-east-1.vfe-prod.validityhq.net
export VAULT_TOKEN=redacted
$(aquaduck aws -p vfe-prod)
export KUBECONFIG=~/.kube/config
kops export kubecfg'
autoload bashcompinit && bashcompinit
complete -C '/usr/local/bin/aws_completer' aws
PROMPT='$(kube_ps1)'$'\n'$PROMPT