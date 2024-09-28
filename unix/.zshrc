# Co' zsh config

# ----- CUSTOMIZATION -----
#
# -- Plugins --
plugins=(git zsh-syntax-highlighting web-search)
# -- Plugins end --
#
# -- Aliases --
alias c="clear"
alias ls="exa --long -F -la --icons"
alias lst2="exa --tree --level=2"
alias lst3="exa --tree --level=3"
alias v="nvim"
alias k="kubectl"

alias gb="git branch"
alias gs="git status"
alias gl="git log"
alias gc="git checkout"

alias nv="nvim"

alias meld="open -W -a Meld $@"
alias meteo="curl wttr.in/Montreal"
alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"
# -- Aliases end --
#
# -- History --
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
# -- History end --


# ----- THEMING -----
#
# -- Prompt --
COLOR_DEF='%f'
COLOR_USR='%F{243}'
COLOR_DIR='%F{166}'
COLOR_GIT='%F{12}'
NEWLINE=$'\n'

parse_git_branch() {
    git branch 2> /dev/null | sed -n -e "s/^\* \(.*\)/\\${COLOR_DEF}| ${COLOR_GIT}\1/p"
}

setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DEF}| ${COLOR_DIR}%d $(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '
# -- Prompt end --


# ----- TOOLS & LANGUAGE -----
#
# -- nvm --
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# -- nvm end --
#
# -- Golang --
export GOPATH=~/.dev/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/$GOPATH/bin
# -- Golang end --
#
# -- Mongo DB --
export PATH=$PATH:/usr/local/mongodb/bin
# -- Mongo DB end --
#
# -- Webstorm --
export PATH=$PATH:/Applications/WebStorm.app/Contents/MacOS
# -- Webstorm end --
#
# -- Google Cloud SDK --
if [ -f '/Users/mac-Z28CTRUF/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mac-Z28CTRUF/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/mac-Z28CTRUF/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mac-Z28CTRUF/google-cloud-sdk/completion.zsh.inc'; fi
# -- Google Cloud SDK end --
#
# pnpm
export PNPM_HOME="/Users/mac-Z28CTRUF/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end



