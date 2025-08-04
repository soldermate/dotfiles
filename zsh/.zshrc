#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

PS1='%n@%m:%~$ '

# SSH Agent
if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi

if [[ -f "$XDG_RUNTIME_DIR/ssh-agent.env" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# Nodejs and npm
export PATH=~/.npm-global/bin:$PATH

alias claude="/home/cam/.claude/local/claude"
