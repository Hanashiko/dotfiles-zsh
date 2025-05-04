# ALIASES

# 📁 Файлова система та навігація
alias ll='ls -lah --color=auto'
alias la='ls -A'
alias mkdir='mkdir -pv'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'
alias dfh='df -hT'
alias duh='du -sh * | sort -h'
alias ff='find . -name'             # приклад: ff "*.zsh"
alias perm='stat -c "%A %n" *'
alias chmodx='chmod +x'
alias mounts='mount | column -t'
alias lsblkf='lsblk -f'

# 🔧 Система і керування процесами
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
alias mem='free -h'
alias cpu='lscpu'
alias temps='sensors'
alias myprocs='ps -u $(whoami)'
alias pkf='pkill -f'
alias k9='kill -9'
alias pgs='pgrep -laf'

# 🌐 Мережа та IP
alias ipi='ip -br a'
alias pingg='ping 8.8.8.8'
alias myip='curl ifconfig.co'
alias portscan='nmap -p- 127.0.0.1'

# 🧵 Lsof / Порти / Відкриті файли
alias lsofports='sudo lsof -i -P -n | grep LISTEN'
alias lsofport='f(){ sudo lsof -i :$1 ; }; f'
alias lsofme='lsof -u $USER'
alias lsoff='f(){ lsof | grep "$1" ; }; f'
alias lsofsock='lsof -i'
alias lsofp='f(){ lsof -p $1 ; }; f'

# 🧼 Пакетний менеджер (pacman/yay)
alias update='sudo pacman -Syyu'
alias install='sudo pacman -S'
alias pki='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias pkr='sudo pacman -Rns'
alias orphan='sudo pacman -Rns $(pacman -Qdtq)'
alias search='pacman -Ss'
alias pks='pacman -Ss'
alias ys='yay -S'

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

# 🔧 Git
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

# 🐍 Python / Venv / Pip
alias venv='python3 -m venv venv && source venv/bin/activate'
alias act='source venv/bin/activate'
alias pipup='pip list --outdated'
alias pipreq='pip freeze > requirements.txt'
alias runpy='python main.py'
alias pipi='pip install'
alias pyfmt='black . && isort .'

# 🧰 Інші DevTools
alias cinstall='composer install'
alias reload!='source ~/.zshrc'
alias which='command -v'

# 🛠️ Magento
alias mcc='bin/magento cache:clean'
alias mccf='bin/magento cache:clean && bin/magento cache:flush'
alias mup='bin/magento setup:upgrade'
alias mdi='bin/magento setup:di:compile'
alias mstatic='bin/magento setup:static-content:deploy -f'
alias mindex='bin/magento indexer:reindex'
alias murl='bin/magento config:set web/unsecure/base_url'

# 🗂️ Конфіг файли
alias nvimconf='nvim ~/.config/nvim'
alias zshconf='nvim ~/.zshrc'
alias bashconf='nvim ~/.bashrc'
alias i3conf='nvim ~/.config/i3/config'
alias polyconf='nvim ~/.config/polybar/config.ini'
alias aliasconf='nvim ~/aliases.zsh'
alias p10kconf='nvim ~/.p10k.zsh'

# 📦 Архівація / Розархівація
alias extract='a(){
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2) tar xjf "$1" ;;
            *.tar.gz) tar xzf "$1" ;;
            *.bz2) bunzip2 "$1" ;;
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
alias gzit='f() { tar -czvf "$1.tar.gz" "$1{@:2}"; }; f'
alias tarit='f() { tar -cvf "$1.tar" "${@:2}"; }; f'

# 📅 Дата та час
alias now='date +"%T"'
alias timestamp='date "+%Y-%m-%d %H:%M:%S"'
alias today='date +"%Y-%m-%d"'
alias week='date +%V'

# 🔍 Пошук та історія
alias grepv='grep -rni'          # приклад: grepv alias ./
alias todo='grep -rni TODO .'

# 👤 Користувачі / Групи / Права
alias userslist='cut -d: -f1 /etc/passwd'
alias groupsme='groups $(whoami)'
alias passwdpol='chage -l $(whoami)'
alias sulog='lastlog | grep -v "Never logged in"'

# 😎 Фанові / Забавні
alias please='sudo'
alias fuck='sudo $(fc -ln -1)'
alias shrug='echo ¯\\\_(ツ)\_/¯'
alias wat='echo "ಠ_ಠ"'
alias flip='echo "(╯°□°）╯︵ ┻━┻"'
alias unflip='echo "┬─┬ ノ( ゜-゜ノ)"'
alias weather='curl wttr.in'


