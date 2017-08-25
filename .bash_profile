# Ubuntu-style prompt
export PS1="\[\e[1;32m\]\]\u\[\e[1;32m\]\]@\[\e[1;32m\]\]\h\[\e[0;2m\]\]:\[\033[01;34m\]\w\[\e[0m\]\]\[$\] "

# Turn on Git autocomplete.
brew_prefix=`brew --prefix`
if [ -f $brew_prefix/etc/bash_completion ]; then
  . $brew_prefix/etc/bash_completion
fi

# dircolors
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
test -e ~/.dircolors-solarized && eval `dircolors -b ~/.dircolors-solarized/dircolors.ansi-universal`

# git-bash-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  GIT_PROMPT_ONLY_IN_REPO=1
  GIT_PROMPT_THEME=Solarized
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Aliases
alias ls="ls --color=always -F" 
alias ll="ls -alF --color=always" 
alias grep="grep --color=always"
alias egrep="egrep --color=always"

