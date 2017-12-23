# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/acurtin/.oh-my-zsh
export ETC_DEST=/Users/acurtin/git/
export EJSON_KEYDIR=/Users/acurtin/ejson/keys

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gitster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"
alias mode='stat -f %Mp%Lp'
# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"


# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker tmux brew rvm ruby zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

function precmd {
  RPROMPT="$k8s_cluster$gcloud_project"
}
# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export HOMEBREW_NO_ANALYTICS=1

alias mode='stat -f %Mp%Lp'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Fix Num-pad mapping on full-size keyboard
# 0 . Enter
bindkey -s "^[Op" "0"
bindkey -s "^[On" "."
bindkey -s "^[OM" "^M"
# 1 2 3
bindkey -s "^[Oq" "1"
bindkey -s "^[Or" "2"
bindkey -s "^[Os" "3"
# 4 5 6
bindkey -s "^[Ot" "4"
bindkey -s "^[Ou" "5"
bindkey -s "^[Ov" "6"
# 7 8 9
bindkey -s "^[Ow" "7"
bindkey -s "^[Ox" "8"
bindkey -s "^[Oy" "9"
# + -  * /
bindkey -s "^[Ol" "+"
bindkey -s "^[Om" "-"
bindkey -s "^[Oj" "*"
bindkey -s "^[Oo" "/"

export PATH="/usr/local/opt/qt5/bin:$PATH"
export PATH=~/.local/bin:$PATH

showcert() {
  openssl s_client -showcerts -servername $1 -connect $1:443
}

alias poc='kubectl config use-context gke_poc-tier1_us-west1-a_poc-environment && zsh'
alias int='kubectl config use-context gke_integration-tier1_us-west1-a_integration-environment && zsh'
alias staging='kubectl config use-context gke_staging-tier1_us-west1-a_staging-environment && zsh'
alias sandbox='kubectl config use-context gke_sandbox-tier1_us-west1-b_sandbox-environment && zsh'
alias performance='kubectl config use-context gke_performance-tier1_us-west1-a_performance-environment && zsh'
alias production='kubectl config use-context gke_production-tier1_us-west1-a_production-environment && zsh'
alias ci='kubectl config use-context gke_continuous-integration-172919_us-east1-d_jenkins-cd && zsh'
alias mk='kubectl config use-context minikube && zsh'
alias git-fuckit='git clean -d -x -f; git reset --hard'
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/acurtin/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/acurtin/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/acurtin/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/acurtin/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# added by travis gem
[ -f /Users/acurtin/.travis/travis.sh ] && source /Users/acurtin/.travis/travis.sh

# go stuff
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/opt/go/libexec/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias gam="/Users/acurtin/bin/gam/gam"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
