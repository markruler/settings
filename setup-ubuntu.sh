#!/usr/bin/env bash

# https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
set -v
# https://markruler.github.io/posts/shell/minimal-safe-bash-script-template/
set -Eeuo pipefail
# https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Builtins.html#index-trap
# https://www.gnu.org/software/bash/manual/html_node/Signals.html
trap - SIGINT SIGTERM ERR EXIT

# Ubuntu 22.04
cat /etc/debian_version

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo snap refresh

sudo apt-get install -y git tree tmux bash bash-completion
sudo snap install curl

# ZSH
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
source $HOME/.zshrc
chsh -s /usr/bin/zsh

echo "alias ll='ls -haltrF'" >> ~/.zshrc

# VIM
sudo apt-get install vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# SSH
ssh-keygen -t ed25519 -f $HOME/.ssh/github_ed25519 -C "ubuntu" -N ""
ssh-keygen -t ed25519 -f $HOME/.ssh/bitbucket_ed25519 -C "ubuntu" -N ""

cat >$HOME/.ssh/config <<EOL
Host github.com
  IdentityFile ~/.ssh/github_ed25519
  User git

Host bitbucket.org
  IdentityFile ~/.ssh/bitbucket_ed25519
  User git

Host tost
  HostName 192.168.0.219
    HostKeyAlgorithms=+ssh-rsa,ssh-dss
    Port=22
    User markruler
    LogLevel VERBOSE
EOL

# SDK Manager
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

sdk install java 11.0.11.hs-adpt
sdk install java 8.0.292.hs-adpt

sdk install maven 3.6.3
sdk install gradle 6.8.3

# GNOME Shell
## dash-to-dock
gsettings set org.gnome.shell.extensions.dash-to-dock animation-time 0.2
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen true
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.6 # 배경 투명도
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 48 # 범위: 16-64 (FHD: 32, QHD: 48, 4K: 64 추천)
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false # 화면에 아이콘이 꽉 차지 않을 때 여백을 두지 않음
gsettings set org.gnome.shell.extensions.dash-to-dock force-straight-corner false
gsettings set org.gnome.shell.extensions.dash-to-dock hotkeys-show-dock true
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide-mode FOCUS_APPLICATION_WINDOWS
gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor true # 모니터가 여러 개일 때 어느 모니터에서든 dock을 볼 수 있음
gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action cycle-windows # 아이콘 위에서 마우스 스크롤하면 여러 윈도우를 이동할 수 있음
gsettings set org.gnome.shell.extensions.dash-to-dock show-favorites true
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts true
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
gsettings set org.gnome.shell.extensions.dash-to-dock show-windows-preview true
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED # 투명도 모드
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style DASHES # 실행 중인 앱 표시 형태

