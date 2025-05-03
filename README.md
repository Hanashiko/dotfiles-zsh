# 🧠 My ZSH Dotfiles

Цей репозиторій містить мій персональний конфігураційний файл для `zsh`, оформлений з темою Powerlevel10k та низкою корисних плагінів для комфортної роботи в терміналі.

## 📁 Структура

```
~/dotfiles-zsh/
├── .zshrc          # Основний конфігураційний файл для zsh
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
 > (або для іншого дистрибутиву)
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

## 📜 Ліцензія

MIT License. Використовуйте та адаптуйте під свої потреби.

---

> Зроблено з ❤️ у Unix-терміналі.

