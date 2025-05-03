# 🧠 My ZSH Dotfiles

Цей репозиторій містить мій персональний конфігураційний файл для `zsh`, оформлений з темою Powerlevel10k та низкою корисних плагінів для комфортної роботи в терміналі.

## 📁 Структура

```
~/dotfiles-zsh/
├── .zshrc          # Основний конфігураційний файл для zsh
├── aliases.zsh     # Скорочення термінальних команд
└── .p10k.zsh       # Конфігурація для Powerlevel10k
```

## ⚙️ Особливості

- **Powerlevel10k** — красива, функціональна та швидка тема.
- **Oh My Zsh** — менеджер для плагінів та тем.
- **Плагіни**:
  - `git` — автокомпліт та підказки для git-команд.
  - `zsh-autosuggestions` — пропозиції під час введення команд.
  - `zsh-syntax-highlighting` — підсвічування синтаксису.
  - `sudo`, `command-not-found`, `alias-tips`, `colored-man-pages`.

- **Аліаси** для пришвидшення роботи:
  - `ll`, `gs`, `ga`, `gc`, `gp`, `..`, `...`, `please`, `update`

- **Кольоровий `ls`, grep, автодоповнення, історія, PATH, LANG**

Зовнішній вигляд
![Preview](./preview.png)

## 🧩 Встановлення

### 1. Клонування репозиторію

```bash
git clone https://github.com/hanashiko/dotfiles-zsh.git ~/dotfiles-zsh
```

### 2. Встановити залежності

- **Zsh**: 
  ```bash
  sudo pacman -S zsh
  ```
- **Oh My Zsh**: 
  ```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  ```
- **Powerlevel10k**:
  ```bash
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  ```

- **Плагіни**:
  ```bash
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ```

- **command-not-found** (для Arch):
  ```bash
  sudo pacman -S pkgfile
  sudo pkgfile --update
  ```

- **zsh-interactive-cd** (для Arch):
  ```bash
  sudo pacman -S fzf
  ```

### 3. Активувати конфіг

```bash
cp ~/dotfiles-zsh/.zshrc ~/.zshrc
cp ~/dotfiles-zsh/aliases.zsh ~/aliases.zsh
cp ~/dotfiles-zsh/.p10k.zsh ~/.p10k.zsh
chsh -s $(which zsh)
```

Перезапусти термінал.

## 🌐 Мова та локалізація

Конфіг налаштований на `en_US.UTF-8`, що дозволяє уникнути проблем з ASCII/UTF-8 виводом.

## 🔗 Aliases

Зручні скорочення для терміналу, які пришвидшують роботу з файловою системою, git, Docker, Magento, Python, тощо.

---

### 📁 Файлова система

| Alias     | Команда                  | Опис                           |
|-----------|---------------------------|--------------------------------|
| `ll`      | `ls -lah --color=auto`    | Детальний список з кольорами   |
| `la`      | `ls -A`                   | Показати приховані файли       |
| `mkdir`   | `mkdir -pV`               | Створити директорію з виводом  |

---

### 🧠 Git

| Alias   | Команда                    | Опис                                |
|---------|-----------------------------|-------------------------------------|
| `gs`    | `git status`                | Статус репозиторію                  |
| `ga`    | `git add`                   | Додати файли                        |
| `gaa`   | `git add .`                 | Додати всі файли                    |
| `gc`    | `git commit`                | Комміт                              |
| `gcm`   | `git commit -m`             | Комміт з повідомленням              |
| `gp`    | `git push`                  | Відправити зміни                    |
| `gl`    | `git pull`                  | Завантажити зміни                   |
| `gco`   | `git checkout`              | Перемкнутись на гілку               |
| `gcb`   | `git checkout -b`           | Створити нову гілку                 |
| `gd`    | `git diff`                  | Показати зміни                      |
| `gr`    | `git remote`                | Віддалені репозиторії               |
| `gcl`   | `git clone`                 | Клонувати репозиторій               |
| `gb`    | `git branch`                | Список гілок                        |

---

### 🐳 Docker

| Alias     | Команда                                | Опис                                   |
|-----------|-----------------------------------------|----------------------------------------|
| `dps`     | `docker ps`                             | Активні контейнери                     |
| `dpsa`    | `docker ps -a`                          | Усі контейнери                         |
| `dstop`   | `docker stop $(docker ps -q)`           | Зупинити всі активні                   |
| `drm`     | `docker rm $(docker ps -a -q)`          | Видалити всі контейнери                |
| `drmi`    | `docker rmi $(docker images -q)`        | Видалити всі образи                    |
| `dimg`    | `docker images`                         | Список образів                         |
| `dsh`     | `docker exec -it`                       | Вхід у контейнер                       |
| `ds`      | `docker stop`                           | Зупинити контейнер                     |
| `dk`      | `docker start`                          | Запустити контейнер                    |
| `dx`      | `docker rm`                             | Видалити контейнер                     |
| `dl`      | `docker logs`                           | Логи контейнера                        |
| `dcu`     | `docker compose up -d`                  | Підняти через Compose у фоні          |
| `dcb`     | `docker compose down`                   | Зупинити Compose                       |

---

### 🗂 Навігація

| Alias     | Команда           | Опис                          |
|-----------|-------------------|-------------------------------|
| `..`      | `cd ..`           | На рівень вище                |
| `...`     | `cd ../..`        | Два рівні вгору               |
| `....`    | `cd ../../..`     | Три рівні вгору               |

---

### 🔐 Sudo / Помічники

| Alias     | Команда                        | Опис                          |
|-----------|--------------------------------|-------------------------------|
| `please`  | `sudo`                         | Альтернатива sudo             |
| `fuck`    | `sudo $(fc -ln -1)`            | Повторити попередню з sudo    |

---

### 🖥 Система (Arch / Pacman)

| Alias     | Команда                                     | Опис                              |
|-----------|----------------------------------------------|-----------------------------------|
| `update`  | `sudo pacman -Syyu`                          | Оновити систему                   |
| `install` | `sudo pacman -S`                             | Встановити пакет                  |
| `remove`  | `sudo pacman -Rns`                           | Видалити з конфігами              |
| `cleanup` | `sudo pacman -Rns $(pacman -Qdtq)`           | Видалити сироти                   |

---

### 🔎 Пошук і перегляд

| Alias | Команда               | Опис                                |
|-------|------------------------|-------------------------------------|
| `f`   | `find . -name`        | Пошук файлів по імені               |
| `h`   | `history \| grep`     | Пошук по історії команд             |

---

### 📦 Misc

| Alias     | Команда                  | Опис                      |
|-----------|---------------------------|---------------------------|
| `c`       | `clear`                   | Очистити термінал        |
| `now`     | `date +"%T"`              | Поточний час              |
| `weather` | `curl wttr.in`            | Погода                    |
| `myip`    | `curl ifconfig.me`        | Поточна IP-адреса         |
| `reload!` | `source ~/.zshrc`         | Перезавантажити ZSH       |

---

### 🐍 Python

| Alias    | Команда                          | Опис                             |
|----------|-----------------------------------|----------------------------------|
| `venv`   | `python -m venv venv`            | Створити virtualenv              |
| `act`    | `source venv/bin/activate`       | Активувати virtualenv            |
| `pipup`  | `pip list --outdated`           | Список застарілих пакетів        |
| `pipreq` | `pip freeze > requirements.txt` | Зберегти залежності              |
| `runpy`  | `python main.py`                | Запустити головний скрипт        |
| `pipi`   | `pip install`                   | Встановити пакет через pip       |

---

### 🐘 PHP / Composer

| Alias      | Команда               | Опис                         |
|------------|------------------------|------------------------------|
| `cinstall` | `composer install`     | Встановити залежності        |

---

### 🧙 Magento

| Alias     | Команда                                               | Опис                              |
|-----------|--------------------------------------------------------|-----------------------------------|
| `mcc`     | `bin/magento cache:clean`                              | Очистити кеш                      |
| `mccf`    | `bin/magento cache:clean && bin/magento cache:flush`   | Повна очистка кешу                |
| `mup`     | `bin/magento setup:upgrade`                            | Оновлення структури бази         |
| `mdi`     | `bin/magento setup:di:compile`                         | Компіляція залежностей            |
| `mstatic` | `bin/magento setup:static-content:deploy -f`           | Деплой статичних файлів          |
| `mindex`  | `bin/magento indexer:reindex`                          | Перегенерація індексів           |
| `murl`    | `bin/magento config:set web/unsecure/base_url`        | Зміна базової URL                 |


## 📜 Ліцензія

MIT License. Використовуйте та адаптуйте під свої потреби.

---

> Зроблено з ❤️ у Unix-терміналі.

