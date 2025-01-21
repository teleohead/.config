alias c='clear'
alias gg='git clone'
alias ra='ranger'
alias vi='nvim'
alias vim='nvim'
alias arm='arch -arm64'
alias ka='k -a'
alias lg='lazygit'
alias nm='neomutt'
alias py='python3'
alias tsc='tmux source $XDG_CONFIG_HOME/tmux/tmux.conf'
alias trc='vi $XDG_CONFIG_HOME/tmux/tmux.conf'

function editnotes {
    local file=~/Desktop/$1/main.tex
    if [ -f "$file" ]; then
        vi "$file"
    else
        echo "Note not found: $file"
    fi
}

