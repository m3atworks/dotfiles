# .bashrc
# Shell
export SHELL=/bin/bash

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# editor
export EDITOR="nvim"

# aliases
if [ -f ~/.bash_aliases ]; then
   source ~/.bash_aliases
fi

# prompt
if [ -f ~/.bash_prompt ]; then
   source ~/.bash_prompt
fi

# fzf
if [ -f ~/.fzf.bash ]; then
   source ~/.fzf.bash
fi

set -o vi

# cargo
export PATH="$HOME/.cargo/bin:$PATH"

