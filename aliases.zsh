# ALIASES

# 📁 Файлова система
alias ll='ls -lah --color=auto'
alias la='ls -A'
alias mkdir='mkdir -pV'

# 🧠 Git
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

# 🐳 Docker
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dstop='docker stop $(docker ps -q)'
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

# 🗂️ Навігація
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# 🔐 Sudo / помічники
alias please='sudo'
alias fuck='sudo $(fc -ln -1)'

# 🖥️ Система (Arch / Pacman)
alias update='sudo pacman -Syyu'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias cleanup='sudo pacman -Rns $(pacman -Qdtq)'

# 🔎 Пошук і перегляд
alias f='find . -name'       # приклад: f "*.zsh"
alias h='history | grep'     # приклад: h ssh

# 📦 Misc
alias c='clear'
alias now='date +"%T"'
alias weather='curl wttr.in'
alias myip='curl ifconfig.me'
alias reload!='source ~/.zshrc'

# 🐍 Python
alias venv='python -m venv venv'
alias act='source venv/bin/activate'
alias pipup='pip list --outdated'
alias pipreq='pip freeze > requirements.txt'
alias runpy='python main.py'

# 🐘 PHP / Composer
alias cinstall='composer install'

# 🧙 Magento
alias mcc='bin/magento cache:clean' 
alias mccf='bin/magento cache:clean && bin/magento cache:flush'
alias mup='bin/magento setup:upgrade'
alias mdi='bin/magento setup:di:compile'
alias mstatic='bin/magento setup:static-content:deploy -f'
alias mindex='bin/magento indexer:reindex'
alias murl='bin/magento config:set web/unsecure/base_url'

