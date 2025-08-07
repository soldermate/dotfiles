#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Lines configured by zsh-newuser-install
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/cam/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Created by `pipx` on 2024-12-16 10:31:27
export PATH="$PATH:/home/cam/.local/bin"

# Terminal colors
export TERM="xterm-256color"

alias ls='ls --color=auto'
alias grep='grep --color=auto'


# Pyenv install
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"

# Shell prompt
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

# Claude code
alias claude="/home/cam/.claude/local/claude"

# Starship
eval "$(starship init zsh)"
