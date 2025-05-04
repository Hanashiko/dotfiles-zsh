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
alias gpl='git pull origin $(git branch --show-current)'
alias gps='git push origin $(git branch --show-current)'

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
alias pki='sudo pacman -S'
alias ys='yay -S'
alias remove='sudo pacman -Rns'
alias pkr='sudo pacman -Rns'
alias orphan='sudo pacman -Rns $(pacman -Qdtq)'
alias search='pacman -Ss'
alias pks='pacman -Ss'

# ⚙️ Системне
alias c='clear'
alias dfh='df -hT'
alias duh='du -sh * | sort -h'
alias pgs='pgrep -laf'
alias lsofports='sudo lsof -i -P -n | grep LISTEN' # показати всі порти які слухають
alias lsofport='f(){ sudo lsof -i :$1 ; }; f' #показати шо слухає конкретний порт
alias lsofme='lsof -u $USER' # показати всі відкриті файли для поточного юзера
alias lsoff='f(){ lsof | grep "$1" ; }; f' #знайти який процес тримає файл
alias lsofsock='lsof -i' #показати всі відкриті сокети
alias lsofp='f(){ lsof -p $1 ; }; f' #показати всі файли відкриті конкретний процесом (PID)
alias portscan='nmap -p- 127.0.0.1'
alias sc='systemctl'
alias scu='systemctl --user'
alias scs='systemctl status'
alias sce='sudo systemctl enable'
alias scd='sudo systemctl disable'
alias scr='sudo systemctl restart'
alias scsrt='sudo systemctl start'
alias scstp='sudo systemctl stop'
alias scfail='systemctl --failed'
alias sclist='systemctl list-units --type=service'
alias scedit='sudo systemctl edit --full'
alias jctl='journalctl -xe'
alias jctlf='journalctl -xe -f'
alias kernlog='sudo dmesg -T | less'
alias ssda='systemd-analyze'
alias mem='free -h' #перегляд використання оперативної пам'яті
alias ipi='ip -br a' # стисла інфа про інтерфейси
alias pingg='ping 8.8.8.8'
alias k9='kill -9'
alias pkf='pkill -f'
alias myprocs='ps -u $(whoami)'

# ⚔️ Права та користувачі
alias userslist='cut -d: -f1 /etc/passwd'
alias groupsme='groups $(whoami)'
alias perm='stat -c "%A %n" *'
alias chmodx='chmod +x'
alias passwdpol='chage -l $(whoami)'
alias sulog='lastlog | grep -v "Never logged in"'

# ⚖️ Статистика системи
alias cpu='lscpu'
alias temps='sensors'
alias mounts='mount | column -t'
alias lsblkf='lsblk -f'

# 🔎 Пошук і перегляд
alias ff='find . -name'       # приклад: ff "*.zsh"
alias h='history | grep'     # приклад: h ssh
alias which='command -v'
alias grepv='grep -rni' # приклад: grepv alias ./
alias todo='grep -rni TODO .'

# 📦 Misc
alias now='date +"%T"'
alias timestamp='date "+%Y-%m-%d %H:%M:%S"'
alias today='date +"%Y-%m-%d"'
alias week='date +%V'
alias weather='curl wttr.in'
alias myip='curl ifconfig.co'
alias reload!='source ~/.zshrc'
alias nv='nvim'

# 🧳Архіви
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
alias gz='tar -czvf' # створюємо .tar.gz
alias ungz='tar -xzvf' # розпаковуємо .tar.gz

# ⚡️Конфіги
alias nvimconf='nvim ~/.config/nvim'
alias zshconf='nvim ~/.zshrc'
alias bashconf='nvim ~/.bashrc'
alias i3conf='nvim ~/.config/i3/config'
alias polyconf='nvim ~/.config/polybar/config.ini'

# 🔥 Приколи
alias shrug='echo ¯\\\_(ツ)\_/¯'
alias wat='echo "ಠ_ಠ"'
alias flip='echo "(╯°□°）╯︵ ┻━┻"'
alias unflip='echo "┬─┬ ノ( ゜-゜ノ)"'

# 🐍 Python
alias venv='python3 -m venv venv && source venv/bin/activate'
alias act='source venv/bin/activate'
alias pipup='pip list --outdated'
alias pipreq='pip freeze > requirements.txt'
alias runpy='python main.py'
alias pipi='pip install'
alias pyfmt='black . && isort .'

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

