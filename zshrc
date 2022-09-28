# If you come from bash you might have to change your $PATH.
export PATH=./node_modules/.bin:$HOME/.npm/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/tsonev/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  gitfast
# gpg-agent
  ssh-agent
)

source $ZSH/oh-my-zsh.sh

# User configuration

# 10 second wait if you do something that will delete everything.
setopt RM_STAR_WAIT

# Be Reasonable!
setopt numeric_glob_sort

# Use vim as an editor
export EDITOR=vim

# vi mode
bindkey -v

# Pass Ctrl+S to applications
stty -ixon

# use incremental search
bindkey ^R history-incremental-search-backward

bindkey ^P history-beginning-search-backward
bindkey ^N history-beginning-search-forward

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

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

export GPG_TTY=$(tty)
#export SSH_AUTH_SOCK=${HOME}/.gnupg/S.gpg-agent.ssh
export CHROME_BIN="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.aliases
source ~/.profile

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:/usr/local/opt/python@3.7/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

source /Users/tsonev/Library/Preferences/org.dystroy.broot/launcher/bash/br
source $HOME/.cargo/env

# Based on `brew --prefix ruby`
export PATH=/usr/local/opt/ruby/bin:$PATH
# Based on `gem environment gemdir`
export PATH=/usr/local/lib/ruby/gems/2.7.0/bin:$PATH

export RUBYOPT="-W0"
export GATSBY_TELEMETRY_DISABLED=1
export NODE_OPTIONS="--max_old_space_size=7168"
if [ -e /Users/tsonev/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/tsonev/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export VAULT_ADDR=https://hvp.akeyless.io

export KENDO_UI_LICENSE="eyJhbGciOiJSUzI1NiIsInR5cCI6IkxJQyJ9.eyJwcm9kdWN0cyI6W3sidHJpYWwiOmZhbHNlLCJjb2RlIjoiS0VORE9VSVJFQUNUIiwibGljZW5zZUV4cGlyYXRpb25EYXRlIjoxNjg4NDEwODAwfSx7InRyaWFsIjpmYWxzZSwiY29kZSI6IktFTkRPVUlDT01QTEVURSIsImxpY2Vuc2VFeHBpcmF0aW9uRGF0ZSI6MTY4ODQxMDgwMH0seyJ0cmlhbCI6ZmFsc2UsImNvZGUiOiJLRU5ET1VJVlVFIiwibGljZW5zZUV4cGlyYXRpb25EYXRlIjoxNjg4NDEwODAwfSx7InRyaWFsIjpmYWxzZSwiY29kZSI6IktFTkRPVUlBTkdVTEFSIiwibGljZW5zZUV4cGlyYXRpb25EYXRlIjoxNjg4NDEwODAwfV0sImludGVncml0eSI6ImhrMFF3UFFVbHo4ZXV3WWpcL09OM0F6elpEd2s9IiwibGljZW5zZUhvbGRlciI6ImNsaWVudHNlcnZpY2VAa2VuZG91aS5jb20iLCJpYXQiOjE2NjA3NDQ4NDIsImF1ZCI6ImNsaWVudHNlcnZpY2VAa2VuZG91aS5jb20iLCJ1c2VySWQiOiJiYmExODIxNy0wNDU4LTQ0N2ItYWYxMy0yMjQxYTMwNjkyOTcifQ.2iLgZ-q5Jit0eJKjDbM55YHZNqRm2dDFOgRGiphUusiUhstuLB36bwVPk0nd-6FYU1h6qBjmxU6nRy-EA6fRwuXeJcjTDHBtEtzGvNx1TMa6uRc8i0NN0Ias9JBR1q0QuTBKwOYpa_jpYFewRApDU7TA5-7z7HHmzP3ehWWMPJ8XjFjuhlR0beaO1LQEioo2vbLauOl0RquBuvatYN3WCvhQqd5MNlpLNR6n78KsrLsxOPc0Q6Brh4pVZcFTTzzC9kMTUL_PCPTHbOPnGPwrlr0hZWxXPoALt1EnmQiSkrfxyhHvcLa5uDdePdQV9X1h5YAgRGGruizg2197WsbDgQ"

