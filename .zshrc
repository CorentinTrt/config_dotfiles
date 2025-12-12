# Co's zsh config
# Updated at 2025.02.17

# Suitable for Warp integration

# ----------

# -- Aliases --
alias c="clear"

alias ls="eza --long -F -la --icons"
alias lst2="eza --tree --level=2"
alias lst3="eza --tree --level=3"

alias v="nvim"

alias k="kubectl"
alias tf="terraform"
alias tfi="terraform init"
alias tfp="terraform plan"
alias tfa="terraform apply"
alias tfd="terraform destroy"

alias gb="git branch"
alias gd="git branch | grep -v 'main' | xargs git branch -D"
alias gs="git status"
alias gl="git log"
alias gc="git checkout"

alias m="curl wttr.in/Montreal"
# -- Aiases end --

# -- nvm --
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# vscode path
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
