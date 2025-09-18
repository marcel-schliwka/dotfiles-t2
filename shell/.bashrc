# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
#
# Use VSCode instead of neovim as your default editor
# export EDITOR="code"
#
# Set a custom prompt with the directory revealed (alternatively use https://starship.rs)
# PS1="\W \[\e]0;\w\a\]$PS1"
# --- Git Aliases ---
alias gst='git status -sb'            # kompakter Status
alias gco='git checkout'              # Branch wechseln
alias gcb='git checkout -b'           # neuen Branch anlegen & wechseln
alias gbr='git branch'                # Branch-Liste
alias gcm='git commit -m'             # Commit mit Message
alias gca='git commit --amend --no-edit' # letzten Commit ändern
alias gaa='git add -A'                # alles adden
alias gap='git add -p'                # interaktiv adden
alias gpl='git pull --ff-only'        # sauber pullen
alias gps='git push'                  # pushen
alias gpsu='git push --set-upstream origin HEAD' # neuen Branch pushen
alias glg='git log --oneline --graph --decorate --all' # schöner Log
alias gll='git log --stat'            # Log mit Stats
alias gdf='git diff'                  # Änderungen diffen
alias gdfc='git diff --cached'        # staged diff
alias gcl='git clone'                 # klonen
alias gfp='git fetch -p'              # Fetch + prune
alias gprune='git fetch -p && git branch -vv | awk "/: gone]/{print \$1}" | xargs -r git branch -d' # tote Branches löschen



export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export GH_KERNEL_TOKEN=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
export GH_PRO_TOKEN=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
export PATH="$HOME/dev/scripts:$PATH"
