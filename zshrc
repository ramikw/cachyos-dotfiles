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

# Syntax highlighting: gruvbox-material colors (matches nvim/tmux/alacritty)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[command]='fg=2'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=2'
ZSH_HIGHLIGHT_STYLES[alias]='fg=2'
ZSH_HIGHLIGHT_STYLES[function]='fg=2'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=2,underline'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=1'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=1'
ZSH_HIGHLIGHT_STYLES[path]='fg=7,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=4'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=3'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=3'
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]='fg=3'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=5'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=8'
ZSH_HIGHLIGHT_STYLES[comment]='fg=8'
ZSH_HIGHLIGHT_STYLES[redirection]='fg=5'
ZSH_HIGHLIGHT_STYLES[arg0]='fg=2'

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

# Environment variables
export EDITOR="nvim"

# PATH additions
export PATH="$HOME/.dotnet/tools:$PATH"
