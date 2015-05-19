autoload -U compinit colors

git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "%{$fg_bold[green]%}${ref#refs/heads/}%{$reset_color%}"
  fi
}

# makes color constants available
colors

# enable colored output from ls, etc
export CLICOLOR=1

# expand functions in the prompt
setopt prompt_subst

# prompt
export PS1='%{$fg_bold[blue]%}(~)%{$reset_color%} '
export RPROMPT='${SSH_CONNECTION+"%{$fg_bold[green]%}"}%{$fg_bold[blue]%}%~%{$reset_color%} -- $(git_prompt_info)'

_git_remote_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    if (( CURRENT == 2 )); then
      # first arg: operation
      compadd create publish rename delete track
    elif (( CURRENT == 3 )); then
      if [[ $words[2] == "publish" ]]; then
        # second arg: local branch name
        compadd `git branch -l | sed "s/[ \*]//g"`
      else;
        # second arg: remote branch name
        compadd `git branch -r | grep -v HEAD | sed "s/.*\///" | sed "s/ //g"`
      fi
    elif (( CURRENT == 4 )); then
      # third arg: remote name
      compadd `git remote`
    fi
  else;
    _files
  fi
}

compctl -K _git_remote_branch grb

stty -ixon

# Environment variables and Screen
export VARSLOC=$HOME/.vars

grabvars() {
    for x in SSH_AGENT_PID SSH_AUTH_SOCK DISPLAY; do
        echo "export $x='${(P)x:q}'"
    done >$VARSLOC
}

sourcevars() {
    [ -f $VARSLOC ] && source $VARSLOC
}

# completion
compinit

# automatically enter directories without cd
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

# 10 second wait if you do something that will delete everything.
setopt RM_STAR_WAIT

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

# ignore duplicate history entries
setopt histignoredups

setopt share_history
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
setopt APPEND_HISTORY

export PATH=$HOME/.bin/:$HOME/bin:/usr/local/bin:$HOME/.gem/ruby/1.9.1/bin:/usr/share/npm/bin:./node_modules/.bin:$PATH

export NODE_PATH=$NODE_PATH:/usr/lib/node_modules:/usr/local/lib/node_modules:/usr/share/npm/node_modules:/usr/share/npm/bin

# Rake VM options
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000

# Disable suspend on Ctrl+S
stty -ixon

# Autoload screen if we aren't in it.  (Thanks Fjord!)
# if [[ $STY = '' ]] then grabvars; screen -xR; fi

sourcevars
cd ~/github/kendo

[ -s "/home/local/TELERIK/tsonev/.dnx/dnvm/dnvm.sh" ] && . "/home/local/TELERIK/tsonev/.dnx/dnvm/dnvm.sh" # Load dnvm
