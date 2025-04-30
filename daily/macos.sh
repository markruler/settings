#!/usr/bin/env bash

# sudo ln -s $PWD/daily-macos.sh /usr/local/bin/daily

# https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
#set -v
# https://markruler.github.io/posts/shell/minimal-safe-bash-script-template/
set -Eeuo pipefail
# https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Builtins.html#index-trap
# https://www.gnu.org/software/bash/manual/html_node/Signals.html
trap - SIGINT SIGTERM ERR EXIT

echo -e "\n🚩 Homebrew update"
brew update

echo -e "\n🚩 Homebrew upgrade"
brew upgrade

echo -e "\n🚩 Homebrew cleanup"
brew cleanup
