neofetch
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Add things to path.
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:/snap/bin
export PATH="$PATH:./node_modules/.bin"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Users/andrewwelton/.local/bin/:$PATH"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Load Plugins
plugins=(git aliases archlinux branch github zsh-autosuggestions zsh-syntax-highlighting zsh-completions zsh-interactive-cd zsh-navigation-tools)
source $ZSH/oh-my-zsh.sh

# Use Better Vim and keybindings
alias vim='lvim'
alias nvim='lvim'
alias lvim-gui='neovide --neovim-bin ~/.local/bin/lvim --multigrid --maximized --frame none'
bindkey -v

# Tmux
alias newtmux='tmux -u new'
alias detachmux='tmux detach'
alias attachmux='tmux attach -t $1'

# Cmatrix & Pipes.sh
alias matrix='cmatrix -s -C cyan'
alias pipes='pipes.sh -t 3 -R -p 5'

# Replace ls with exa
alias ls='exa -al --color=always --group-directories-first --icons' # preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l='exa -lah --color=always --group-directories-first --icons' # tree listing

#continue download
alias wget='wget -c'

#hardware info --short
alias hw='hwinfo --short'

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

#Package Info
alias info='sudo pacman -Si '
alias infox='sudo pacman -Sii '

#shutdown or reboot
alias sr='sudo reboot'
alias ssn='sudo shutdown now'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH=$PATH:/Users/andrewwelton/.spicetify

export PATH="/Users/andrewwelton/.deta/bin:$PATH"
