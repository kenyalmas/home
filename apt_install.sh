#!/usr/bin/env bash
# Customizable installer lives in the private dotfiles repository.
set -euo pipefail
installer="${DOTFILES_DIR:-$HOME/dotfiles}/apt_install.sh"
if [[ ! -f "$installer" ]]; then
    printf 'Installer not found: %s\nSet DOTFILES_DIR to your dotfiles checkout.\n' "$installer" >&2
    exit 1
fi
exec bash "$installer" "$@"
