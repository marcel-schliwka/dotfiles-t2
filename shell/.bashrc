# Snippets laden
for f in "$HOME/.bashrc.d/"*.sh; do [ -r "$f" ] && . "$f"; done
