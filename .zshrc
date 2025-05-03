# Увімкнення Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Шлях до oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# Тема Powerlevel10k
ZSH_THEME="powerlevel10k/powerlevel10k"

# Плагіни
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  sudo
  command-not-found
  alias-tips
  colored-man-pages
)

# Ініціалізація oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Шрифт 
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# ALIASES
# Файлова система
alias ll='ls -lah --color=auto'
alias la='ls -A'
alias mkdir='mkdir -pV'
# Робота з git
alias gs='git status'
alias ga='git add'
alias gaa='git add .'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gd='git diff'
alias gr='git remote'
alias gcl='git clone'
alias gb='git branch'
# Docker
alias dps='docker ps'
alias dpsa='docker pa -a'
alias dstop='docker stop $(docke ps -q)'
alias drm='docker rm $(docker ps -a -q)'
alias drmi='docker rmi $(docker images -q)'
alias dimg='docker images'
alias dsh='docker exec -it'
alias ds='docker stop'
alias dk='docker start'
alias dx='docker rm'
alias dl='docker logs'
alias dcu='docker compose up -d'
alias dcb='docker compose down'
# Навігація
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
# Sudo/помічники
alias please='sudo'
alias fuck='sudo $(fc -ln -1)'
# Система (Arch/Pacman)
alias update='sudo pacman -Syyu'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias cleanup='sudo pacman -Rns $(pacman -Qdtq)'
# Пошук і перегляд
alias f='find . -name' #приклад: f "*.zsh"
alias h='history | grep' # приклад h ssh
# Misc
alias c='clear'
alias now='date +"%T"'
alias weather='curl wttr.in'
alias myip='curl ifconfig.me'
alias reload!='source ~/.zshrc'
# Python
alias venv='python -m venv venv'
alias act='source venv/bin/activate'
alias pipup='pip list --outdated'
alias pipreq='pip freeze > requirements.txt'
alias runpy='python main.py'
# PHP
alias cinstall='composer install'
# Magento
alias mcc='bin/magento cache:clean' 
alias mccf='bin/magento cache:clean && bin/magento cache:flush'
alias mup='bin/magento setup:upgrade'
alias mdi='bin/magento setup:di:compile'
alias mstatic='bin/magento setup:static-content:deploy -f'
alias mindex='bin/magento indexer:reindex'
alias murl='bin/magento config:set web/unsecure/base_url'

# Зробити LS гарнішим
export LS_COLORS="di=1;36:fi=0:ln=1;35:pi=40;33:so=1;35:bd=1;33:cd=1;33:or=1;31:ex=1;32"

# Увімкнути кольори grep, ls
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Історія
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt hist_ignore_all_dups
setopt share_history

# Автокомпліт
autoload -Uz compinit
compinit

# Підсвітка
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main)

# Автодоповнення
bindkey '^ ' autosuggest-accept

# Команда не знайдена
source /usr/share/doc/pkgfile/command-not-found.zsh

# LANG
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# PATH
export PATH=$HOME/.local/bin:$PATH

# Виклик Powerlevel10k 
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
