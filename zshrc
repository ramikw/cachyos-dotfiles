# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History
HISTSIZE=10000
SAVEHIST=10000

# Tmux auto-attach (must be set before oh-my-zsh's tmux plugin loads)
ZSH_TMUX_AUTOSTART=true

# Autosuggestions: try history first, fall back to file path completion
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  tmux
  man
  colored-man-pages
  colorize
  command-not-found
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias update="yay -Syu"
alias clean="yay -Sc"
alias tx="tmuxinator"

# Powerlevel10k prompt
source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
[[ -f ~/.config/zsh/.p10k.zsh ]] && source ~/.config/zsh/.p10k.zsh

bindkey '^ ' autosuggest-accept # ctrl + space
