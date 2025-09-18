# 🌌 MacBook Pro 2018 T2 Security Chip - Arch Linux with Omarchy (by dhh)

> Personal dotfiles and development environment — powered by [GNU Stow](https://www.gnu.org/software/stow/), automated scripts, and way too much coffee ☕.  
> Designed for **Hyprland + Neovim + modern CLI tooling**.

---

![GitHub repo size](https://img.shields.io/github/repo-size/marcel-schliwka/dotfiles-t2?label=Repo%20Size&color=blueviolet)
![GitHub last commit](https://img.shields.io/github/last-commit/marcel-schliwka/dotfiles-t2?color=green)
[![License](https://img.shields.io/badge/license-GLWTS--No--LLMs-red?style=flat-square)](./LICENSE)

[![T2 Linux](https://img.shields.io/badge/Powered%20by-T2%20Linux-blue?logo=apple)](https://t2linux.org/)  
[![Omarchy](https://img.shields.io/badge/Inspiration-Omarchy-black?logo=github)](https://github.com/basecamp/omarchy)

---

## ✨ Features

- 📦 **Modular setup** with [GNU Stow] — no more copy-paste dotfile hell
- ⌨️ **Shell aliases** & clean `bashrc.d/` snippets
- 🖥️ **Hyprland configs** for tiling window management
- 🎨 **Waybar** + **Alacritty** + **Kitty** theming
- ⚡ **Neovim** (LazyVim-based) with pinned plugin versions
- 🔒 Secure `.env` separation (example files included)
- 🛠️ Custom helper scripts (`mk-repo`, `dotfiles-relink.sh`, etc.)

---

## 📂 Structure

```bash
dotfiles-t2
├── config/           # ~/.config/ (all apps + WM configs)
│   └── .config/
│       ├── alacritty/
│       ├── hypr/
│       ├── kitty/
│       ├── nvim/
│       └── waybar/
├── shell/            # Bash setup (aliases, rc.d snippets)
├── mk-repo/          # GitHub repo automation (tokens, env.example)
├── scripts/          # Dev helper scripts
├── stow-local-ignore # Ignore patterns for GNU Stow
└── README.md
```

## 🚀 Quickstart

### 1. Clone

git clone git@github.com:marcel-schliwka/dotfiles-t2.git ~/dev/professional/dotfiles-t2
cd ~/dev/professional/dotfiles-t2

### 2. Review & Configure

#### Copy example env file

cp mk-repo/.config/mk-repo/env.example mk-repo/.config/mk-repo/env

#### Fill in your personal GitHub tokens

#### Adjust paths if needed

### 3. Deploy with Stow

./dotfiles-relink.sh

### 4. Reload

hyprctl reload # reload Hyprland

## 🧩 Adding New Dotfiles

#### Add configs into:

config/.config/<app>/

#### Re-stow:

./dotfiles-relink.sh

## 🔐 Environment Variables

GH_PRO_TOKEN # Personal/professional GitHub access
GH_GART_TOKEN # Org-specific GitHub access

## 💡 Philosophy

> Dotfiles should be portable, reproducible, and beautifully boring.
> This repo exists so a new system can go from 🆕 → 💻 dev-ready in minutes.

## 🙏 Shoutouts

This project wouldn’t even exist without:

- [![T2 Linux](https://img.shields.io/badge/T2%20Linux-Love%20Your%20Mac-blue?logo=apple)](https://t2linux.org/)
- [![Omarchy](https://img.shields.io/badge/DHH-Omarchy-black?logo=github)](https://github.com/basecamp/omarchy)

Big thanks for blazing the trail 🚀

## 🛡️ Disclaimer

These dotfiles are highly opinionated and tailored for my workflow.
Use them at your own risk — or fork, tweak, and make them yours.

## 👨‍💻 Author

**Marcel Schliwka**  
[![Website](https://img.shields.io/badge/Website-marcelschliwka.de-blue?style=flat&logo=google-chrome&logoColor=white)](https://marcelschliwka.de)  
[![GitHub](https://img.shields.io/badge/GitHub-marcel--schliwka-black?style=flat&logo=github)](https://github.com/marcel-schliwka)
