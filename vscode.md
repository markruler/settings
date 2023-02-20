# Visual Studio Code

## macOS

어느 순간부터 `code` 명령어가 안 먹히고 온갖 Extension 에러가 발생했다.
GitHub 로그인도 되지 않아서 `setting.json`도 동기화되지 않았다.
`>Developer: Toggle Developer Tools`로 콘솔을 확인해보니 온갖 에러가 발생하고 있었다.
코드는 쓸 수 있으니 그냥저냥 써왔는데 Extension을 만드려고 보니까 빌드조차 되지 않아서 해결해야만 했다.

처음 이상하다고 느낀 건 다음과 같은 에러 때문이었다.

```sh
Cannot update while running on a read-only volume.
The application is on a read-only volume.
Please move the application and try again.
If you're on macOS Sierra or later, you'll need to move the application out of the Downloads directory.
This might mean the application was put on quarantine by macOS. See this link for more information.
```

volume? Downloads directory?
[확인해보라는 link](https://github.com/microsoft/vscode/issues/7426#issuecomment-425093469)도 들어가봤다.

```sh
sudo chown $USER ~/Library/Caches/com.microsoft.VSCode.ShipIt/*
# zsh: no matches found: /Users/markruler/Library/Caches/com.microsoft.VSCode.ShipIt/*

xattr -dr com.apple.quarantine /Applications/Visual\ Studio\ Code.app
# xattr: No such file: /Applications/Visual Studio Code.app
```

응?

`>Developer: Open Process Explorer`로 확인해보니 `Visual Studio Code.app`이 `Downloads` 폴더에 있었다.

```sh
mv ~/Downloads/Visual\ Studio\ Code.app /Applications/
```

다시 살펴보니 VSCode도 업데이트되지 않고 있었다.
최신 버전이 1.75인데 설치 버전은 1.66이었다.
(`>Code: Show Release Notes`)
거의 1년을 업데이트하지 않고 있었다니...

- VS Code 업데이트
- `setting.json` 동기화
- `>Shell Command: Install 'code' command in PATH`
- Copilot 로그인
- Extension 빌드

