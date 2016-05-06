# Path to your oh-my-zsh installation.
export ZSH=/Users/kushnir.yb/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dracula"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git rails ruby zsh-syntax-highlighting)

# User configuration

#export PATH="/Users/kushnir.yb/.rvm/gems/ruby-2.2.4/bin:/Users/kushnir.yb/.rvm/gems/ruby-2.2.4@global/bin:/Users/kushnir.yb/.rvm/rubies/ruby-2.2.4/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Users/kushnir.yb/.rvm/bin:/Users/kushnir.yb/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH=$PATH:$HOME/.rvm/bin
PATH=$PATH:/usr/local/sbin
source $ZSH/oh-my-zsh.sh


export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias vim='mvim -v'
alias redis='redis-server /usr/local/etc/redis.conf'
alias rabbitmq='rabbitmq-server'
alias pry='pry -r ./config/environment'
alias sidekiq='bundle exec sidekiq'
alias syncleads='ssh doubleclickleads@184.107.161.186'
alias deploy='bundle exec cap production deploy'
alias postgre='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
#export TERM='xterm-256color'
