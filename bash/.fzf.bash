# Setup fzf
# ---------
if [[ ! "$PATH" == */home/meatworker/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/meatworker/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/meatworker/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/meatworker/.fzf/shell/key-bindings.bash"
