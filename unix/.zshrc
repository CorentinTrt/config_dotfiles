# p10k theme initialization (have to stay on top of this file)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Init nvm
source ~/.nvm/nvm.sh

# Init zsh-autocompletion
#source ~/.zsh-plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Theming
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias c="clear"
alias ls="exa --long -F -la --icons"
alias lst2="exa --tree --level=2"
alias lst3="exa --tree --level=3"
alias v="nvim"

# History
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

