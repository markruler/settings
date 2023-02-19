#!/usr/bin/env bash

# sudo ln -sr daily-ubuntu.sh /usr/local/bin/daily

# https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
set -v
# https://markruler.github.io/posts/shell/minimal-safe-bash-script-template/
set -Eeuo pipefail
# https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Builtins.html#index-trap
# https://www.gnu.org/software/bash/manual/html_node/Signals.html
trap - SIGINT SIGTERM ERR EXIT

# Ubuntu 22.04
# APT
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y

## Snapcraft
sudo snap refresh

