# ~/.zprofile

# -----------------------
# PATH Setup
# -----------------------

# pipx
export PATH="$PATH:/home/sebi/.local/bin"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  # This loads nvm

# sdkman (end of file)
export SDKMAN="$HOME/.sdkman/bin/sdkman-init.sh"
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
