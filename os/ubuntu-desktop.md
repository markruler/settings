# Ubuntu Desktop

- [Ubuntu Desktop](#ubuntu-desktop)
  - [그래픽 카드 드라이버](#그래픽-카드-드라이버)
  - [Background](#background)
  - [terminal 투명도 설정](#terminal-투명도-설정)
  - [VS Code 설치](#vs-code-설치)
  - [command auto suggestion (not fuzzy suggestion)](#command-auto-suggestion-not-fuzzy-suggestion)
  - [vim](#vim)
  - [tmux](#tmux)
  - [dock](#dock)
  - [Ubuntu login loop](#ubuntu-login-loop)
  - [GNOME Shell Extensions](#gnome-shell-extensions)
  - [NordVPN 설치](#nordvpn-설치)
  - [블로깅을 위한 hugo 다운로드](#블로깅을-위한-hugo-다운로드)
  - [윈도우 앱을 위한 `Wine`](#윈도우-앱을-위한-wine)
  - [가상 머신 관리 도구 Virtual Box](#가상-머신-관리-도구-virtual-box)
  - [provisioning 도구 Vagrant](#provisioning-도구-vagrant)

```bash
cat /etc/debian_verison
# bullseye/sid
```

## 그래픽 카드 드라이버

```bash
nvidia-detector
# nvidia-driver-460
sudo lshw -C display
# *-display
```

```bash
sudo apt install -y nvidia-driver-460
sudo apt install -y nvidia-utils-460
reboot
```

```bash
watch -d -n 1 nvidia-smi

+-----------------------------------------------------------------------------+
| NVIDIA-SMI 460.32.03    Driver Version: 460.32.03    CUDA Version: 11.2     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|                               |                      |               MIG M. |
|===============================+======================+======================|
|   0  GeForce GTX 1660    Off  | 00000000:09:00.0  On |                  N/A |
| 46%   31C    P8     8W / 130W |    215MiB /  5936MiB |      3%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+

+-----------------------------------------------------------------------------+
| Processes:                                                                  |
|  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
|        ID   ID                                                   Usage      |
|=============================================================================|
|    0   N/A  N/A       999      G   /usr/lib/xorg/Xorg                 53MiB |
|    0   N/A  N/A      2178      G   /usr/lib/xorg/Xorg                 96MiB |
|    0   N/A  N/A      2477      G   /usr/bin/gnome-shell               54MiB |
+-----------------------------------------------------------------------------+
```

## Background

- [Unsplash](https://unsplash.com/photos/k5Vj3gx4vHE)

## terminal 투명도 설정

![ubuntu-terminal-transparent](../images/ubuntu-terminal-transparent.png)

## VS Code [설치](https://gist.github.com/philoskim/a79440bd51ae40f04a4d7cafa472caf1)

snap으로 설치할 경우 한글이 입력되지 않습니다.
Slack 등 다른 애플리케이션도 snap으로 설치하면 마찬가지로 한영 전환(`Shift`+`Space`)이 안 됩니다.
(저는 Slack을 우분투 소프트웨어 센터에서 설치했는데 snap을 통해 설치되나 보네요)

![ubuntu-remove-slack](../images/ubuntu-remove-slack.png)

- Slack도 [홈페이지에서 직접 다운로드](https://slack.com/intl/en-kr/downloads/linux)하시면 됩니다.

```bash
# 기존에 snap으로 설치했다면 삭제
sudo snap remove code

cd /tmp
# https://code.visualstudio.com/download `.deb` 파일 다운로드
wget https://az764295.vo.msecnd.net/stable/ea3859d4ba2f3e577a159bc91e3074c5d85c0523/code_1.52.1-1608136922_amd64.deb

# 설치
sudo dpkg -i code_1.52.1-1608136922_amd64.deb

# 지울 때는
# sudo dpkg -r code
```

## command auto suggestion (not fuzzy suggestion)

- fish: 자체 제공

```bash
sudo apt install -y fish
which fish
# /usr/bin/fish
```

```bash
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
```

- 저의 경우엔 root 계정만 `fish`를 사용하고 일반 사용자 계정은 `bash`를 사용합니다.

```bash
echo $SHELL
# /bin/bash
# chsh --shell /usr/bin/fish

grep <username> /etc/passwd
# changsu:x:1000:1000:changsu,,,:/home/changsu:/usr/bin/fish

sudo usermod --shell /bin/bash <username>
grep <username> /etc/passwd
# changsu:x:1000:1000:changsu,,,:/home/changsu:/bin/bash
# >>> 리부트!
```

- zsh: 플러그인 [설치](https://github.com/zsh-users/zsh-autosuggestions)

```bash
sudo apt-get install zsh
```

## vim

```bash
sudo apt-get install vim
```

- [$HOME/.vimrc](../config/.vimrc)

## tmux

```bash
sudo apt-get install tmux
```

- [$HOME/.tmux.conf](../config/.tmux.conf)

## dock

- [options](https://github.com/micheleg/dash-to-dock/blob/master/schemas/org.gnome.shell.extensions.dash-to-dock.gschema.xml)

```bash
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
gsettings set org.gnome.shell.extensions.dash-to-dock animation-time 0.2
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED # 투명도 모드
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.6 # 배경 투명도
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style DASHES # 실행 중인 앱 표시 형태
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide-mode FOCUS_APPLICATION_WINDOWS
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32 # 범위: 16-64
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false # 화면에 아이콘이 꽉 차지 않을 때 여백을 두지 않음
gsettings set org.gnome.shell.extensions.dash-to-dock show-windows-preview true
gsettings set org.gnome.shell.extensions.dash-to-dock show-favorites true
gsettings set org.gnome.shell.extensions.dash-to-dock show-trash true
gsettings set org.gnome.shell.extensions.dash-to-dock show-mounts true
gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor true # 모니터가 여러 개일 때 어느 모니터에서든 dock을 볼 수 있음
gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action cycle-windows # 아이콘 위에서 마우스 스크롤하면 여러 윈도우를 이동할 수 있음
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys true # `super`+`num`
gsettings set org.gnome.shell.extensions.dash-to-dock hotkeys-show-dock true
gsettings set org.gnome.shell.extensions.dash-to-dock force-straight-corner false
```

- 초기화하기 위해서는 아래 명령어를 사용합니다.

```bash
dconf reset -f /org/gnome/shell/extensions/dash-to-dock/
```

![ubuntu-bottom-dock](../images/ubuntu-bottom-dock.png)

- dock에 있는 앱들을 `Super`+`숫자` 조합으로 선택할 수 있습니다.

## Ubuntu login loop

저의 경우 위와 같이 `gsettings`를 건드리면 부팅 시 계정을 생성하는 페이지만 나왔습니다.
[스택오버플로우](https://askubuntu.com/questions/1277793/ubuntu-20-04-always-forces-me-to-create-a-new-user-at-boot/)에 의하면
GDM3나 그래픽 드라이버 문제일 수 있습니다. 만약 저와 같은 일이 반복되신다면 아래를 참고해주세요.

- 우선 계정 생성 페이지에서는 터미널을 열 수 없기 때문에: `Ctrl`+`Alt`+`t`
- 다른 가상 터미널(Virtual Terminal)에 접근합니다: `Ctrl`+`Alt`+`f1-f6` or `Alt`+`left|right`

```bash
sudo vi /etc/xdg/autostart/gnome-initial-setup-first-login.desktop
# 아래와 같은 라인을 주석 처리합니다.
Exec=/usr/libexec/gnome-initial-setup --existing-user
```

- 확실히 하기 위해 패키지까지 제거 후 gdm3 구성 정보를 추가합니다.

```bash
sudo apt remove gnome-initial-setup
```

```bash
vi /etc/gdm3/custom.conf

# [daemon]
# InitialSetupEnable=False
```

## GNOME Shell Extensions

- 도움되는 확장 기능

## NordVPN 설치

- [매뉴얼](https://support.nordvpn.com/Connectivity/Linux/1325531132/Installing-and-using-NordVPN-on-Debian-Ubuntu-Elementary-OS-and-Linux-Mint.htm)

```bash
cd /tmp
curl -LSf https://downloads.nordcdn.com/apps/linux/install.sh -o nordvpn.sh
chmod +x nordvpn.sh
./nordvpn.sh

# ...
# NordVPN for Linux successfully installed!
# To get started, please re-login or execute `su - $USER` in the current shell, type 'nordvpn login' and enter your NordVPN account details. Then type 'nordvpn connect' and you’re all set! To allow other users to use the application run 'usermod -aG nordvpn otheruser'. If you need help using the app, use the command 'nordvpn --help'.
```

```bash
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

## 블로깅을 위한 hugo 다운로드

```bash
sudo apt-get install hugo
```

## 윈도우 앱을 위한 `Wine`

- [홈페이지](https://www.winehq.org/)
- [설치](https://wine.htmlvalidator.com/install-wine-on-ubuntu-20.04.html)

```bash
dpkg --print-architecture
# amd64
dpkg --print-foreign-architectures
# i386
# 만약 "i386"이 출력되지 않는다면 추가해줍니다.
sudo dpkg --add-architecture i386
```

```bash
# cd /tmp
# wget -nc https://dl.winehq.org/wine-builds/winehq.key
# sudo apt-key add winehq.key
# OK
# sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
# sudo apt update
# sudo apt install --install-recommends winehq-stable
```

```bash
sudo apt install wine
sudo apt list --installed | less
sudo apt list --installed | grep -i wine
apt show wine

wine --version
# wine-6.0
```

```bash
winecfg
wine

wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks
chmod +x winetricks
./winetricks --optout
# Install a Windows DLL or component 선택
```

## 가상 머신 관리 도구 Virtual Box

```bash
sudo apt install -y virtualbox
```

## provisioning 도구 Vagrant

- [다운로드](https://www.vagrantup.com/downloads)

```bash
cd /tmp
wget https://releases.hashicorp.com/vagrant/2.2.14/vagrant_2.2.14_x86_64.deb
sudo apt install ./vagrant_2.2.14_x86_64.deb
vagrant --version
```
