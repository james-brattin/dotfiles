#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
  . ~/.bash_functions
fi

export EDITOR="nvim"

PS1='[\u@\h \W]\$ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# Starship
eval "$(starship init bash)"

# pnpm
export PNPM_HOME="/home/james/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export GPG_TTY=$(tty)

# zoxide
eval "$(zoxide init --cmd z bash)"
. "/home/james/.deno/env"
source /home/james/.local/share/bash-completion/completions/deno.bash

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/james/.lmstudio/bin"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

. "$HOME/.local/bin/env"
