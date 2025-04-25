# Ubuntu

- [Ubuntu](#ubuntu)
  - [check version](#check-version)
  - [Tools](#tools)
    - [Firewall](#firewall)
  - [Ansible](#ansible)
  - [root 비밀번호 설정](#root-비밀번호-설정)
  - [Nautilus](#nautilus)
  - [locale은 한국으로 유지한 채 홈 디렉토리 명만 영어로 바꾸기](#locale은-한국으로-유지한-채-홈-디렉토리-명만-영어로-바꾸기)
    - [English 설치 후 Korean 설정 추가](#english-설치-후-korean-설정-추가)
  - [NVIDIA drivers installation](#nvidia-drivers-installation)
  - [Terminal](#terminal)
    - [투명도 설정](#투명도-설정)
  - [Oh My Zsh](#oh-my-zsh)
  - [GitHub SSH Key 등록](#github-ssh-key-등록)
  - [GNOME Shell Extensions](#gnome-shell-extensions)
    - [dash-to-dock](#dash-to-dock)
  - [Ubuntu login loop](#ubuntu-login-loop)
  - [Snapcraft: Package Manager](#snapcraft-package-manager)
  - [Docker](#docker)
  - [1Password](#1password)
  - [Dropbox](#dropbox)
    - [Dropbox Headless](#dropbox-headless)
    - [Usages](#usages)
  - [Flameshot (Screenshot Tool)](#flameshot-screenshot-tool)
  - [Cursor AI](#cursor-ai)
  - [NordVPN 설치](#nordvpn-설치)
  - [Visual Studio Code](#visual-studio-code)
  - [JetBrains Toolbox](#jetbrains-toolbox)

## check version

```sh
cat /etc/debian_version
# bullseye/sid

cat /etc/*release
# DISTRIB_DESCRIPTION="Ubuntu 24.10"
```

## Tools

```sh
sudo apt update
sudo apt upgrade
```

```sh
sudo apt install libfuse2 gnupg2 git vim tmux bash bash-completion
sudo snap install curl
```

- [libfuse2](https://github.com/AppImage/AppImageKit/wiki/FUSE) for AppImage
- [gnupg2](https://gnupg.org/) for GPG (git, 1password, etc.)

```sh
git config --global user.email "imcxsu@gmail.com"
git config --global user.name "Changsu Im"
git config --global core.editor vim
```

### Firewall

```sh
sudo apt install firewalld
# ipset iptables libip4tc2 libip6tc2 nftables
```

```sh
# 일반 애플리케이션이 실행되지 않는 경우 (Permission Denied)
sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0
```

## Ansible

- [ansible setup](https://github.com/xpdojo/ansible/tree/study/setup/ubuntu)

## root 비밀번호 설정

```sh
sudo -i
```

```sh
root> passwd
# New password: 
# Retype new password: 
# passwd: password updated successfully
```

## Nautilus

- Ubuntu의 기본 파일 관리자
- 가끔 GNOME UI 세팅하다보면 사라질 때가 있는데(...) 다시 설치해주면 된다.

```sh
sudo apt-get install nautilus
```

## locale은 한국으로 유지한 채 홈 디렉토리 명만 영어로 바꾸기

```sh
export LANG=C; xdg-user-dirs-gtk-update

ls $HOME
# Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos

cat ~/.config/user-dirs.locale
# C
cat ~/.config/user-dirs.dirs
# XDG_DESKTOP_DIR="$HOME/Desktop"
# XDG_DOWNLOAD_DIR="$HOME/Downloads"
# XDG_TEMPLATES_DIR="$HOME/Templates"
# XDG_PUBLICSHARE_DIR="$HOME/Public"
# XDG_DOCUMENTS_DIR="$HOME/Documents"
# XDG_MUSIC_DIR="$HOME/Music"
# XDG_PICTURES_DIR="$HOME/Pictures"
# XDG_VIDEOS_DIR="$HOME/Videos"
```

```sh
# 다시 한국어로 바꾸고 'Keep old folders'
export LANG=ko_KR.utf8; xdg-user-dirs-gtk-update

locale
# LANG=ko_KR.UTF-8
# LANGUAGE=
# LC_CTYPE="ko_KR.UTF-8"
# LC_NUMERIC="ko_KR.UTF-8"
# LC_TIME="ko_KR.UTF-8"
# LC_COLLATE="ko_KR.UTF-8"
# LC_MONETARY="ko_KR.UTF-8"
# LC_MESSAGES="ko_KR.UTF-8"
# LC_PAPER="ko_KR.UTF-8"
# LC_NAME="ko_KR.UTF-8"
# LC_ADDRESS="ko_KR.UTF-8"
# LC_TELEPHONE="ko_KR.UTF-8"
# LC_MEASUREMENT="ko_KR.UTF-8"
# LC_IDENTIFICATION="ko_KR.UTF-8"
# LC_ALL=
```

### English 설치 후 Korean 설정 추가

```sh
sudo apt install ibus-hangul
```

```sh
ibus resart
```

- Language Support > Install/Remove Languages
  - **Korean**
  - Applying changes
- Keyboard > Input sources
  - [ ] English
  - [x] **Korean (Hangul)**
  - [ ] Korean
  - [ ] Korean (101/104 key compatible)

```sh
ibus-setup-hangul
```

- Hangul Toggle Key
  - **Hangul**
  - **Shift+space**

- [Ubuntu 22.04 한글 입력기 3가지 설정 방법(ibus, uim, fcitx)](https://osg.kr/archives/913)

## NVIDIA drivers installation

- 설치하지 않으면 듀얼 모니터가 정상적으로 출력되지 않음.
- [install nvidia drivers](https://documentation.ubuntu.com/server/how-to/graphics/install-nvidia-drivers/index.html) | Ubuntu Docs

```sh
sudo ubuntu-drivers list --gpgpu
# nvidia-driver-535-server, (kernel modules provided by linux-modules-nvidia-535-server-generic)
# nvidia-driver-570-server, (kernel modules provided by linux-modules-nvidia-570-server-generic)
# nvidia-driver-560, (kernel modules provided by linux-modules-nvidia-560-generic)
```

```sh
sudo ubuntu-drivers install
```

```sh
nvidia-smi -L
# GPU 0: NVIDIA GeForce GTX 1050 Ti (UUID: GPU-04922b12-e910-a747-8a82-8d4f4ced04af)
```

```sh
nvidia-detector
# nvidia-driver-570
```

```sh
nvidia-smi
```

```sh
Fri Apr 25 12:44:16 2025
+-----------------------------------------------------------------------------------------+
| NVIDIA-SMI 560.35.03              Driver Version: 560.35.03      CUDA Version: 12.6     |
|-----------------------------------------+------------------------+----------------------+
| GPU  Name                 Persistence-M | Bus-Id          Disp.A | Volatile Uncorr. ECC |
| Fan  Temp   Perf          Pwr:Usage/Cap |           Memory-Usage | GPU-Util  Compute M. |
|                                         |                        |               MIG M. |
|=========================================+========================+======================|
|   0  NVIDIA GeForce GTX 1050 Ti     Off |   00000000:01:00.0  On |                  N/A |
| 30%   29C    P8             N/A /   75W |      45MiB /   4096MiB |      0%      Default |
|                                         |                        |                  N/A |
+-----------------------------------------+------------------------+----------------------+
                                                                                         
+-----------------------------------------------------------------------------------------+
| Processes:                                                                              |
|  GPU   GI   CI        PID   Type   Process name                              GPU Memory |
|        ID   ID                                                               Usage      |
|=========================================================================================|
|    0   N/A  N/A      2460      G   /usr/bin/gnome-shell                           41MiB |
+-----------------------------------------------------------------------------------------+
```

## Terminal

### 투명도 설정

![ubuntu-terminal-transparent](../images/ubuntu-terminal-transparent.png)

## Oh My Zsh

- [ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)

```sh
sudo apt-get install zsh
```

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

```sh
# $HOME/.zshrc
ZSH_THEME="gozilla"
```

```sh
source $HOME/.zshrc
```

```sh
cat /etc/shells
# /bin/sh
# /bin/bash
# /usr/bin/bash
# /bin/rbash
# /usr/bin/rbash
# /bin/dash
# /usr/bin/dash
# /usr/bin/tmux
# /usr/bin/fish
# /bin/zsh
# /usr/bin/zsh
```

```sh
chsh -s /usr/bin/zsh
```

```sh
# 리부팅해야 적용된다.
reboot
```

root 계정만 `fish`를 사용하고 일반 사용자 계정은 `bash`를 사용할 수도 있다.

```sh
echo $SHELL
# /bin/bash
# chsh --shell /usr/bin/fish
```

```sh
grep $USER /etc/passwd
# markruler:x:1000:1000:markruler,,,:/home/markruler:/usr/bin/fish
```

```sh
sudo usermod --shell /bin/bash $USER
grep $USER /etc/passwd
# markruler:x:1000:1000:markruler,,,:/home/markruler:/bin/bash
```

```sh
reboot
```

## GitHub SSH Key 등록

- [일상에서의 SSH](https://markruler.github.io/posts/network/ssh/)

## GNOME Shell Extensions

- [GNOME에 도움되는 확장 기능](https://extensions.gnome.org/)

### dash-to-dock

- [options](https://github.com/micheleg/dash-to-dock/blob/master/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml)

```sh
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
```

dock을 자동으로 숨기고 싶다면 아래 설정을 적용한다.

```sh
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen true
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true
```

반대로 고정하고 싶다면 아래 설정을 적용한다.

```sh
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen false
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false
```

hot-key가 비활성화 상태라면 바꾼다.

```sh
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys true # `super`+`num`
gsettings list-recursively org.gnome.shell.extensions.dash-to-dock | grep app-hotkey
# org.gnome.shell.extensions.dash-to-dock app-hotkey-1 ['<Super>2']
# org.gnome.shell.extensions.dash-to-dock app-hotkey-10 ['<Super>0']
# org.gnome.shell.extensions.dash-to-dock app-hotkey-2 ['<Super>2']
# org.gnome.shell.extensions.dash-to-dock app-hotkey-3 ['<Super>3']
# org.gnome.shell.extensions.dash-to-dock app-hotkey-4 ['<Super>4']
# org.gnome.shell.extensions.dash-to-dock app-hotkey-5 ['<Super>5']
# org.gnome.shell.extensions.dash-to-dock app-hotkey-6 ['<Super>6']
# org.gnome.shell.extensions.dash-to-dock app-hotkey-7 ['<Super>7']
# org.gnome.shell.extensions.dash-to-dock app-hotkey-8 ['<Super>8']
# org.gnome.shell.extensions.dash-to-dock app-hotkey-9 ['<Super>9']
```

초기화하기 위해서는 아래 명령어를 사용한다.

```sh
dconf reset -f /org/gnome/shell/extensions/dash-to-dock/
```

![ubuntu-bottom-dock](../images/ubuntu-bottom-dock.png)

dock에 있는 앱들을 `Super`+`숫자` 조합으로 선택할 수 있다.

## Ubuntu login loop

위와 같이 `gsettings`를 수정하면 부팅 시 계정을 생성하는 페이지만 나오는 경우가 있다.
GDM3나 그래픽 드라이버 문제일 수 있다.

- [참조: 스택오버플로우](https://askubuntu.com/questions/1277793/ubuntu-20-04-always-forces-me-to-create-a-new-user-at-boot/)
- 우선 계정 생성 페이지에서는 터미널을 열 수 없기 때문에 `Ctrl`+`Alt`+`t`
- 다른 가상 터미널(Virtual Terminal)에 접근한다. `Ctrl`+`Alt`+`f1-f6` or `Alt`+`left|right`

```sh
sudo vi /etc/xdg/autostart/gnome-initial-setup-first-login.desktop
# 아래와 같은 라인을 주석 처리한다.
Exec=/usr/libexec/gnome-initial-setup --existing-user
```

확실히 하기 위해 패키지까지 제거한 후 gdm3 구성 정보를 추가한다.

```sh
sudo apt remove gnome-initial-setup
```

```sh
vi /etc/gdm3/custom.conf

# [daemon]
# InitialSetupEnable=False
```

## Snapcraft: Package Manager

- [snapcraft](https://snapcraft.io/install/snapcraft/ubuntu)

```sh
sudo apt update
sudo apt install snapd

## snapcraft 설치
sudo snap install snapcraft --classic
```

```sh
# telegram
sudo snap find telegram
sudo snap install telegram-desktop

# Slack
sudo snap install slack --classic

# Discord
sudo snap install discord

# Postman
sudo snap install postman
```

## Docker

[Install Docker Engine on Ubuntu](https://docs.docker.com/engine/install/ubuntu/) | Docker Docs

## 1Password

- [Download 1Password for Linux](https://1password.com/downloads/linux/)

```sh
sudo dpkg -i 1password-latest.deb
```

```sh
# 에러 발생 시
sudo apt --fix-broken install
```

## Dropbox

- [Download](https://www.dropbox.com/install-linux)

```sh
# Ubuntu 18.04 ~ 22.04
sudo dpkg -i dropbox_2020.03.04_amd64.deb
# Ubuntu 22.10+
sudo dpkg -i dropbox_2024.04.17_amd64.deb
```

### Dropbox Headless

```sh
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
```

```sh
dropbox filestatus ~/Dropbox
```

### Usages

```sh
dropbox status
```

```sh
dropbox start -i
```

```sh
dropbox start
# To link this computer to a Dropbox account, visit the following url: https://www.dropbox.com/cli_link_nonce?nonce=<hash>
```

```sh
dropbox stop
```

```sh
dropbox autostart y
# dropbox autostart n
```

```sh
cd ~/Dropbox
dropbox filestatus
```

```sh
dropbox exclude list
dropbox exclude add ebook
```

## Flameshot (Screenshot Tool)

- Configuration
  - [x] Save image after copy
  - 같은 Dropbox 경로에 저장하기 위해 macOS와 포맷 동일하게 설정.
    - Filename Editor > Edit: `Screenshot %F at %I.%M.%S %p`
    - General > Save Path: `~/Dropbox/Screenshots`
- 단축키 설정
  - Keyboard > Shortcuts > Custom Shortcuts
  - Name: `Flameshot`
  - Command: `/bin/sh -c '/usr/bin/flameshot gui'`
  - Shortcut: `Shift` + `Super` + `S`

## Cursor AI

```sh
curl https://gist.githubusercontent.com/markruler/2820bd05d613c61dac906814a4e282b7/raw/install_cursor.sh | sh
# source ~/.bashrc
# cursor
```

## NordVPN 설치

- [매뉴얼](https://support.nordvpn.com/Connectivity/Linux/1325531132/Installing-and-using-NordVPN-on-Debian-Ubuntu-Elementary-OS-and-Linux-Mint.htm)

```sh
curl https://downloads.nordcdn.com/apps/linux/install.sh | sh
# ...
# NordVPN for Linux successfully installed!
# To get started, please re-login or execute `su - $USER` in the current shell,
# type 'nordvpn login' and enter your NordVPN account details.
# Then type 'nordvpn connect' and you’re all set!
# To allow other users to use the application run 'usermod -aG nordvpn otheruser'.
# If you need help using the app, use the command 'nordvpn --help'.
```

```sh
sudo nordvpn help

sudo nordvpn login
# sudo nordvpn logout
sudo nordvpn countries
sudo nordvpn cities united_states

sudo nordvpn c # connect
sudo nordvpn c us # united_states
sudo nordvpn d # disconnect

sudo nordvpn set technology # Set connection technology (OpenVPN or NordLynx)
sudo nordvpn set protocol udp # [tcp, udp]
sudo nordvpn set killswitch on
sudo nordvpn set cybersec on
sudo nordvpn set notify on
sudo nordvpn set obfuscate on
sudo nordvpn set autoconnect on
sudo nordvpn settings

sudo nordvpn status
sudo nordvpn rate # Rate your last connection quality (1-5)
```

## Visual Studio Code

```sh
# sudo snap install code --classic
# sudo snap remove code
```

snap으로 설치할 경우 한글이 입력되지 않는다.
`.deb` 패키지를 다운로드 받아서 설치한다.

- [Download Visual Studio Code](https://code.visualstudio.com/download)

```sh
mv ~/Downloads/code_${VERSION}_amd64.deb /tmp
cd /tmp
sudo dpkg -i code_${VERSION}_amd64.deb
```

## JetBrains Toolbox

- [Download](https://www.jetbrains.com/toolbox-app/)

```sh
tar xf jetbrains-toolbox-1.21.9712.tar.gz
cd jetbrains-toolbox-1.21.9712

./jetbrains-toolbox
```
