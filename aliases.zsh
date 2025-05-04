# ALIASES

# 📁 Файлова система
alias ll='ls -lah --color=auto'
alias la='ls -A'
alias mkdir='mkdir -pv'

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

# ⚙️ Системне
alias c='clear'
alias dfh='df -h'
alias duh='du -h --max-depth=1'
alias pgs='pgrep -laf'
alias lsofports='sudo lsof -i -P -n | grep LISTEN' # показати всі порти які слухають
alias lsofport='f(){ sudo lsof -i :$1 ; }; f' #показати шо слухає конкретний порт
alias lsofme='lsof -u $USER' # показати всі відкриті файли для поточного юзера
alias lsoff='f(){ lsof | grep "$1" ; }; f' #знайти який процес тримає файл
alias lsofsock='lsof -i' #показати всі відкриті сокети
alias lsofp='f(){ lsof -p $1 ; }; f' #показати всі файли відкриті конкретний процесом (PID)
alias sc='systemctl'
alias scu='systemctl --user'
alias scs='systemctl status'
alias sce='sudo systemctl enable'
alias scd='sudo systemctl disable'
alias scr='sudo systemctl restart'
alias scsrt='sudo systemctl start'
alias scstp='sudo systemctl stop'
alias jctl='journalctl -xe'
alias jctlf='journalctl -xe -f'
alias ssda='systemd-analyze'

# 🔎 Пошук і перегляд
alias f='find . -name'       # приклад: f "*.zsh"
alias h='history | grep'     # приклад: h ssh
alias which='command -v'

# 📦 Misc
alias now='date +"%T"'
alias weather='curl wttr.in'
alias myip='curl ifconfig.co'
alias reload!='source ~/.zshrc'
alias extract='a(){
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2) tar xjf "$1" ;;
            *.tar.gz) tar xzf "$1" ;;
            *bz2) bunzip2 "$1" ;;
            *.rar) unrar x "$1" ;;
            *.gz) gunzip "$1" ;;
            *.tar) tar xf "$1" ;;
            *.tbz2) tar xjf "$1" ;;
            *.tgz) tar xzf "$1" ;;
            *.zip) unzip "$1" ;;
            *.Z) uncompress "$1" ;;
            *.7z) 7z x "$1" ;;
            *) echo "'$1' cannot be unpacked automatically." ;;
        esac
    else
        echo "'$1' does not exists."
    fi
}; a'

# 🔥 Приколи
alias shrug='echo ¯\\\_(ツ)\_/¯'
alias wat='echo "ಠ_ಠ"'
alias flip='echo "(╯°□°）╯︵ ┻━┻"'
alias unflip='echo "┬─┬ ノ( ゜-゜ノ)"'

# 🐍 Python
alias venv='python -m venv venv'
alias act='source venv/bin/activate'
alias pipup='pip list --outdated'
alias pipreq='pip freeze > requirements.txt'
alias runpy='python main.py'
alias pipi='pip install'

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

