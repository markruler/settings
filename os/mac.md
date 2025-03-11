# macOS

- [macOS](#macos)
  - [System Settings](#system-settings)
    - [Function Key (F1, F2, ...) 사용](#function-key-f1-f2--사용)
    - [한/영전환 키 매핑 변경](#한영전환-키-매핑-변경)
      - [XML 파일로 변환해서 편집하는 방법](#xml-파일로-변환해서-편집하는-방법)
  - [zsh](#zsh)
  - [HomeBrew](#homebrew)
    - [Ghostty](#ghostty)
  - [sdkman](#sdkman)
  - [App Store](#app-store)
  - [Applications](#applications)
  - [공장 초기화 (Factory Reset)](#공장-초기화-factory-reset)

## System Settings

### Function Key (F1, F2, ...) 사용

- System Settings > Keyboard > Keyboard Shortcuts > Function Keys > Use F1, F2, etc. keys as standard function keys

### 한/영전환 키 매핑 변경

- `Caps Lock` -> `Shift` + `Space`

```sh
open ~/Library/Preferences/com.apple.symbolichotkeys.plist
```

- 설정
  - Root > AppleSymbolicHotKeys > **61** > value > parameters > item 2 > **131072** 로 변경.
  - OS 리부트
  - 기본값 integer 상수는 OS 버전마다 다름.
- 설정 초기화
  - System Settings > Keyboard > Keyboard Shortcuts > Input Sources > **Restore Defaults**

#### XML 파일로 변환해서 편집하는 방법

Apple binary property list (`.plist`) 형식의 파일을 XML 형식으로 변환한다.

```bash
cd ~/Library/Preferences/
file com.apple.symbolichotkeys.plist
# com.apple.symbolichotkeys.plist: Apple binary property list

plutil -convert xml1 com.apple.symbolichotkeys.plist
file com.apple.symbolichotkeys.plist
# com.apple.symbolichotkeys.plist: XML 1.0 document text, ASCII text
```

XML 문서를 편집한다.

```bash
vi com.apple.symbolichotkeys.plist
```

```xml
<!-- 61번 키 - kSHKSelectNextSourceInInputMenu -->
<key>61</key>
<dict>
  <key>enabled</key>
  <true/>
  <key>value</key>
  <dict>
    <key>parameters</key>
    <array>
      <integer>32</integer>
      <integer>49</integer>
      <integer>131072</integer>
    </array>
    <key>type</key>
    <string>standard</string>
  </dict>
</dict>
```

다시 Apple binary property list 형식으로 변환한다.

```bash
plutil -convert binary1 com.apple.symbolichotkeys.plist
file com.apple.symbolichotkeys.plist
# com.apple.symbolichotkeys.plist: Apple binary property list
```

머신을 재시동한다.

```bash
sudo reboot
```

## zsh

- [oh my zsh](https://github.com/ohmyzsh/ohmyzsh)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- zsh Theme: [gozilla](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#gozilla)

```bash
#ZSH_THEME="robbyrussell"
ZSH_THEME="gozilla"
```

```bash
vi ~/.zshrc
# alias ll="ls -hal"
```

## HomeBrew

- [homepage](https://brew.sh/)

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```bash
brew install telnet
```

```bash
brew update && brew upgrade && brew cleanup
```

### Ghostty

- [download](https://ghostty.org/download)
- [iTerm2](https://iterm2.com/) 사용하다가 업데이트마다 발생하는 버그를 견디지 못하고 이주함.

```sh
brew install --cask ghostty
```

## sdkman

- [homepage](https://sdkman.io/)

```bash
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
# SDKMAN 5.12.2
```

- [LINE의 OpenJDK 적용기: 호환성 확인부터 주의 사항까지](https://engineering.linecorp.com/ko/blog/line-open-jdk/)

```bash
sdk list java
# Available Java Versions
# ...

sdk install java 11.0.11.hs-adpt
sdk current
java --version

sdk install java 8.0.292.hs-adpt
sdk use java 8.0.292.hs-adpt
sdk current
java -version

sdk list java
#  AdoptOpenJDK  |     | 11.0.11.hs   | adpt    | installed  | 11.0.11.hs-adpt
#                | >>> | 8.0.292.hs   | adpt    | installed  | 8.0.292.hs-adpt
```

```bash
sdk install maven 3.6.3
sdk use maven 3.6.3

mvn --version
```

```bash
sdk install gradle 6.9
```

## App Store

- [Amphetamine](https://apps.apple.com/app/amphetamine/id937984704): Keep-Awake Utility
- [Magnet](https://apps.apple.com/app/magnet/id441258766): Window Manager

## Applications

- [JetBrains Toolbox](https://www.jetbrains.com/toolbox-app/)
- [Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio Code](https://code.visualstudio.com/)
  - `.vscode/settings.json`

    ```json
    "files.exclude": {
        "**/.git": false
    }
    ```

## 공장 초기화 (Factory Reset)

- [link](https://support.apple.com/en-us/102664)
- System Settings > General > Transfer or Reset > Erase All Content and Settings
