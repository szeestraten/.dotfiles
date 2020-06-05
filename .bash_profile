# Ubuntu-style prompt
export PS1="\[\e[1;32m\]\]\u\[\e[1;32m\]\]@\[\e[1;32m\]\]\h\[\e[0;2m\]\]:\[\033[01;34m\]\w\[\e[0m\]\]\[$\] "

# git
brew_prefix=`brew --prefix`
if [ -f $brew_prefix/etc/bash_completion.d ]; then
  . $brew_prefix/etc/bash_completion.d/git-completion.bash
fi

# bash-completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

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

alias vagload="vagrant destroy -f && vagrant up"

# Python 3 Brew
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="~/Library/Python/3.7/bin/:$PATH"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Google Cloud SDK
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

bind '"\e[5C": forward-word'
bind '"\e[5D": backward-word'
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'

export PATH="/usr/local/opt/node@12/bin:$PATH"
