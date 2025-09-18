#!/usr/bin/env bash
set -euo pipefail

# === Einstellungen ===
DOTFILES_DIR="$HOME/dev/professional/dotfiles-t2"
TARGET="$HOME"
PACKAGES=("shell" "config" "scripts" "mk-repo" "git")

cd "$DOTFILES_DIR"

echo "🔁 Dotfiles Refresh gestartet"
echo "📂 Repo: $DOTFILES_DIR"
echo "🏠 Ziel: $TARGET"
echo

# === Sicherstellen, dass lokale Dateien im Repo liegen ===
if [ -f "$HOME/.bashrc" ] && [ ! -f "$DOTFILES_DIR/shell/.bashrc" ]; then
  echo "📦 Verschiebe vorhandene .bashrc ins Repo"
  mv "$HOME/.bashrc" "$DOTFILES_DIR/shell/.bashrc"
fi

if [ -f "$HOME/dev/scripts/mk-repo" ] && [ ! -f "$DOTFILES_DIR/scripts/dev/scripts/mk-repo" ]; then
  echo "📦 Verschiebe mk-repo Script ins Repo"
  mkdir -p "$DOTFILES_DIR/scripts/dev/scripts"
  mv "$HOME/dev/scripts/mk-repo" "$DOTFILES_DIR/scripts/dev/scripts/mk-repo"
fi

# === Stow ausführen ===
for pkg in "${PACKAGES[@]}"; do
  echo "🔗 Stow $pkg"
  stow -vt "$TARGET" --adopt "$pkg"
done

# === Git Commit & Push ===
if git rev-parse --is-inside-work-tree &>/dev/null; then
  if ! git diff --quiet || ! git diff --cached --quiet; then
    echo "💾 Änderungen committen..."
    git add -A
    git commit -m "chore(dotfiles): refresh $(date '+%Y-%m-%d %H:%M:%S')"
    echo "🚀 Push nach Origin..."
    git push
  else
    echo "✅ Keine Änderungen zu committen."
  fi
fi

echo "✨ Dotfiles Refresh abgeschlossen!"
