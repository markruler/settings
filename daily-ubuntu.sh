#!/usr/bin/env bash

# sudo ln -sr daily-ubuntu.sh /usr/local/bin/daily

# https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
#set -v
# https://markruler.github.io/posts/shell/minimal-safe-bash-script-template/
set -Eeuo pipefail
# https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Builtins.html#index-trap
# https://www.gnu.org/software/bash/manual/html_node/Signals.html
trap - SIGINT SIGTERM ERR EXIT

# Ubuntu 22.04
# APT
echo -e "\n🚩 APT update"
sudo apt-get update

echo -e "\n🚩 APT upgrade"
sudo apt-get upgrade -y

echo -e "\n🚩 APT autoremove"
sudo apt-get autoremove -y

## Snapcraft
echo -e "\n🚩 Snap refresh"
sudo snap refresh

echo -e "\n🚩 SDKMAN update"
sdk update
