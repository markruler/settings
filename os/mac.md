# macOS

- [macOS](#macos)
  - [System Preferences](#system-preferences)
    - [`Shift` + `Space`로 한/영전환](#shift--space로-한영전환)
  - [iTerm2 Preferences](#iterm2-preferences)
  - [zsh](#zsh)
  - [HomeBrew](#homebrew)
  - [sdkman](#sdkman)
  - [App Store](#app-store)
  - [Applications](#applications)

## System Preferences

### `Shift` + `Space`로 한/영전환

- Catalina: `~/Library/Preferences/com.apple.symbolichotkeys.plist` 파일을 Xcode로 열고 `<key>61</key>`에서 `<integer>1048576</integer>`를 `<integer>131072</integer>`로 수정, OS 리부트
  - Xcode는 App Store에서 다운로드할 수 있다.
  - Xcode를 다운로드하면 git을 사용할 때 license agreements 에 대한 문구가 나온다. 아래 명령어를 실행해서 동의해준다.

    ```bash
    sudo xcodebuild -license
    ```

  - `com.apple.symbolichotkeys.plist` 파일을 복원하려면 Keyboard > Shortcuts > Keyboard - `Restore Defaults`
- Big Sur: Keyboard > Shortcuts > Input Sources > Select the previous input source: `fn` + `Shift` + `Space`
- Monterey: Catalina와 동일하지만 VIM으로 해결해보자.

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
      <!-- <integer>786432</integer> -->
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

## [iTerm2](https://iterm2.com/) Preferences

- Profiles > Text > Font: [NanumGothicCoding](https://github.com/naver/nanumfont), Regular, 14
- [option 키 설정](https://apple.stackexchange.com/questions/154292/iterm-going-one-word-backwards-and-forwards)
  - Go to Preferences... > Profiles > Keys (not Preferences... > Keys)
  - On current versions (3.14+) you then switch to the Key Mappings tab
  - Press Presets... dropdown button.
  - Select Natural Text Editing
- Profiles > Session > Status bar enabled > Configure Status Bar: CPU Utilization, Memory Utilization, Network Throughput, Job Name, Current Directory, git state
  - Appearance: Status bar location - Bottom
- Profiles > Terminal: Scrollback Buffer - lines 3,000

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

## [HomeBrew](https://brew.sh/index_ko)

```bash
cd $HOME
# git clone https://github.com/Homebrew/brew homebrew
mkdir homebrew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C homebrew
eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"
```

```bash
brew install telnet
```

```bash
brew update && brew upgrade && brew cleanup
```

## [sdkman](https://sdkman.io/)

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
