# 🌌 dotfiles-t2

> Personal dotfiles and development environment — powered by [GNU Stow](https://www.gnu.org/software/stow/), automated scripts, and way too much coffee ☕.  
> Designed for **Hyprland + Neovim + modern CLI tooling**.

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


# 🚀 Quickstart

# 1. Clone
git clone git@github.com:marcel-schliwka/dotfiles-t2.git ~/dev/professional/dotfiles-t2
cd ~/dev/professional/dotfiles-t2

# 2. Review & Configure
# Copy example env file
cp mk-repo/.config/mk-repo/env.example mk-repo/.config/mk-repo/env
# Fill in your personal GitHub tokens
# Adjust paths if needed

# 3. Deploy with Stow
./dotfiles-relink.sh

# 4. Reload
hyprctl reload   # reload Hyprland

# 🧩 Adding New Dotfiles

# Add configs into:
config/.config/<app>/

# Re-stow:
./dotfiles-relink.sh

# 🔐 Environment Variables

GH_PRO_TOKEN   # Personal/professional GitHub access
GH_GART_TOKEN  # Org-specific GitHub access

# 💡 Philosophy
Dotfiles should be portable, reproducible, and beautifully boring.
This repo exists so a new system can go from 🆕 → 💻 dev-ready in minutes.

# 🛡️ Disclaimer
Dotfiles should be portable, reproducible, and beautifully boring.
This repo exists so a new system can go from 🆕 → 💻 dev-ready in minutes.

# 🧙 Author
Marcel Schliwka
🌍 Germany • 💻 Web Developer in training • ☕ Coffee-powered tinkerer
