# alias editing shortcuts
alias aliases="${EDITOR} ~/.bash_aliases && source ~/.bash_aliases"

# editing
alias e="${EDITOR}"
alias lp='leafpad'
alias e.='Onivim2.AppImage'

## Colorize the ls output ##
alias ls='ls --color=auto'

## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
alias l.='ls -d .* --color=auto'

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias mkdir='mkdir -pv'

## tf work

alias tf='podman run --rm -v "$(pwd)":/data -it --net=host terraform-aws:wip'

alias docker=podman

alias butane='podman run --rm --tty --interactive \
              --security-opt label=disable        \
              --volume ${PWD}:/pwd --workdir /pwd \
              quay.io/coreos/butane:release'

