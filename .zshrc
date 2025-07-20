# ~/.zshrc

# -----------------------
# Basic Setup
# -----------------------

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

# Prompt
PROMPT='%n%F{green}@%m%f:%~ %# '

# Enable command auto-correction
setopt correct

# Enable autocompletion
autoload -Uz compinit
compinit

# Load custom aliases
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases

# Editor
export EDITOR=vim

# -----------------------
# Enviroment
# -----------------------

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Starship Prompt
# eval "$(starship init zsh)"

# Bun
export PATH="/home/sebi/.bun/bin:$PATH"

# Zoxide
eval "$(zoxide init zsh)"

# rust
. "$HOME/.cargo/env"

