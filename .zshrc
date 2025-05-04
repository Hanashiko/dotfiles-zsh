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
  zsh-interactive-cd
  copyfile
  copypath
  docker
)

# Ініціалізація oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Шрифт 
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# Завантажуємо кастомні alias
source ~/aliases.zsh

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

# Відобразити README.sh 
#/bin/bash /home/dev/README.sh

# PATH
export PATH=$HOME/.local/bin:$PATH

# Виклик Powerlevel10k 
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
