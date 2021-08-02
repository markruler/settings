# macOS Catalina, Big Sur

## System Preferences

- `Shift` + `Space`로 한영전환
  - Catalina: `~/Library/Preferences/com.apple.symbolichotkeys.plist` 파일을 Xcode로 열고 `<key>61</key>`에서 `<integer>1048576</integer>`를 `<integer>131072</integer>`로 수정, OS 리부트
  - Big Sur: Keyboard > Shortcuts > Input Sources > Select the previous input source: `fn` + `Shift` + `Space`

## [iTerm2](https://iterm2.com/)

- Font: [NanumGothicCoding](https://github.com/naver/nanumfont), Regular, 14
- Preferences > Profiles > Keys > Left Option key : `Esc+`

## zsh

- [oh my zsh](https://github.com/ohmyzsh/ohmyzsh)

```zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- zsh Theme: [gozilla](https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#gozilla)

```zsh
# ZSH_THEME="gozilla"
```

```zsh
vi ~/.zshrc
# alias ll="ls -hal"
```

## [HomeBrew](https://brew.sh/index_ko)

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

```zsh
brew update && brew upgrade && brew cleanup
```

## [sdkman](https://sdkman.io/)

```zsh
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
# SDKMAN 5.12.2
```

- [LINE의 OpenJDK 적용기: 호환성 확인부터 주의 사항까지](https://engineering.linecorp.com/ko/blog/line-open-jdk/)

```zsh
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

```zsh
sdk install maven 3.6.3
sdk use maven 3.6.3

mvn --version
```

```zsh
sdk install gradle 6.9
```

## App Store

- [Amphetamine](https://apps.apple.com/app/amphetamine/id937984704): Keep-Awake Utility
- [Magnet](https://apps.apple.com/app/magnet/id441258766): Window Manager

## etc.

- [IntelliJ IDEA](https://www.jetbrains.com/ko-kr/idea/) - Ultimate
- [DBeaver](https://dbeaver.io/) - Community Edition
- [Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/)
- [Visual Studio Code](https://code.visualstudio.com/)
  - `.vscode/settings.json`

```json
"files.exclude": {
    "**/.git": false
}
```
