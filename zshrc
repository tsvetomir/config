# Set up Pure prompt
# Requires https://github.com/sindresorhus/pure
autoload -U promptinit; promptinit
prompt pure

# Set up completion
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qNmh-24) ]]; then
  # If the zcompdump file is older than 24 hours, recompile it
  compinit -C
else
  # If the zcompdump file is missing or newer than 24 hours, just load it
  compinit
fi

# Load plugins
# Requires cloning each plugin
source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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

# Load aliases
source ~/.aliases

export NODE_OPTIONS="--max_old_space_size=7168"
export PATH=./node_modules/.bin:$HOME/.npm/bin:$PATH
