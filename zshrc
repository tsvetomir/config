autoload -U compinit colors

# makes color constants available
colors

# enable colored output from ls, etc
export CLICOLOR=1

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='%{$fg_bold[blue]%}(~)%{$reset_color%} '
export RPROMPT='${SSH_CONNECTION+"%{$fg_bold[green]%}"}%{$fg_bold[blue]%}%~%{$reset_color%}'

stty -ixon

# completion
compinit

# automatically enter directories without cd
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

# Be Reasonable!
setopt numeric_glob_sort

# use vim as an editor
export EDITOR=vim

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# vi mode
bindkey -v

# use incremental search
bindkey ^R history-incremental-search-backward

bindkey ^P history-beginning-search-backward
bindkey ^N history-beginning-search-forward

# expand functions in the prompt
setopt prompt_subst

setopt share_history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
setopt APPEND_HISTORY

export PATH=$HOME/.bin/:$PATH

# Disable suspend on Ctrl+S
stty -ixon

