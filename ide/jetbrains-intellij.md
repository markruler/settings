# JetBrains의 IntelliJ IDEA

- [JetBrains의 IntelliJ IDEA](#jetbrains의-intellij-idea)
  - [자주 쓰는 단축키 (default keymap 기준)](#자주-쓰는-단축키-default-keymap-기준)
    - [슈퍼파워](#슈퍼파워)
    - [이동 (Navigate)](#이동-navigate)
    - [화면 (View)](#화면-view)
    - [작성 (Edit)](#작성-edit)
    - [리팩토링 (Refactoring)](#리팩토링-refactoring)
    - [실행 (Run)](#실행-run)
  - [유용한 도구](#유용한-도구)
    - [Analyze Plugin Startup Performance](#analyze-plugin-startup-performance)
    - [Do not step into the classes](#do-not-step-into-the-classes)
  - [Preferences](#preferences)
    - [Appearance](#appearance)
    - [Encoding](#encoding)
    - [자동으로 코드가 접히는 것 해제](#자동으로-코드가-접히는-것-해제)
    - [주석했을 때 맨 앞에 `//`가 들어가는 경우](#주석했을-때-맨-앞에-가-들어가는-경우)
    - [`import.*` 피하기](#import-피하기)
    - [`Alt` + `방향키`를 눌렀을 때 단어 단위로 멈추고 싶은 경우](#alt--방향키를-눌렀을-때-단어-단위로-멈추고-싶은-경우)
    - [`.properties` 파일에서 유니코드로 문자를 보기 싫은 경우](#properties-파일에서-유니코드로-문자를-보기-싫은-경우)
    - [JVM Options](#jvm-options)
    - [IDE 메모리 사용량 확인하고 늘리기](#ide-메모리-사용량-확인하고-늘리기)
    - [SDK 소스 파일 연결](#sdk-소스-파일-연결)
    - [Linux의 경우 Dock에 아이콘을 추가하려면](#linux의-경우-dock에-아이콘을-추가하려면)
    - [Commit 윈도우가 보이지 않을 경우](#commit-윈도우가-보이지-않을-경우)
  - [플러그인](#플러그인)
    - [Optional](#optional)

## 자주 쓰는 단축키 (default keymap 기준)

- [Reference Card](https://resources.jetbrains.com/storage/products/intellij-idea/docs/IntelliJIDEA_ReferenceCard.pdf)

### 슈퍼파워

| eng                                     | kor                      | Linux `GNOME` / `Windows` | `macOS`                   |
| --------------------------------------- | ------------------------ | ------------------------- | ------------------------- |
| Search Everywhere                       | 모든 것을 검색할 수 있음 | double `Shift`            | double `Shift`            |
| Run Anything (Command or Configuration) | 모든 것을 실행할 수 있음 | double `Ctrl`             | double `Control`          |
| Preferences                             | 설정                     | `Ctrl` + `Alt` + `S`      | `Command` + `,`           |
| Find Action                             | 기능 찾기                | `Ctrl` + `Shift` + `A`    | `Command` + `Shift` + `A` |

### 이동 (Navigate)

| eng                    | kor                            | Linux `GNOME` / `Windows`  | `macOS`                                  |
| ---------------------- | ------------------------------ | -------------------------- | ---------------------------------------- |
| Terminal               | 터미널 열기                    | `Alt` + `F12`              | `Command` + `F12`                        |
| Tool Window - Project  | 프로젝트 창                    | `Alt` + `1`                | `Command` + `1`                          |
| Tool Window - Run      | 실행 창                        | `Alt` + `4`                | `Command` + `4`                          |
| Tool Window - Services | 서비스 창 (톰캣 서버 등)       | `Alt` + `8`                | `Command` + `8`                          |
| Focus Editor           | 다시 에디터 창으로 포커스 이동 | `Esc`                      | `Esc`                                    |
| Next / Previous Tab    | 에디터 창에서 파일 간 이동     | `Alt` + `Left/Right Arrow` | `Shift` + `Command` + `Left/Right Arrow` |
| Recent files Popup     | 최근 파일 보기                 | `Ctrl` + `E`               | `Command` + `E`                          |
| Editor Tabs - Close    | 현재 탭 닫기                   | `Ctrl` + `F4`              | `Command` + `W`                          |
| Switcher               | 창 간 이동                     | `Ctrl` + `Tab`             | `Control` + `Tab`                        |
| Change View            | 뷰 변경                        | `Ctrl` + `Shift` + `1`     | `Option` + `F1`                          |

### 화면 (View)

| eng                        | kor                                              | Linux `GNOME` / `Windows` | `macOS`                     |
| -------------------------- | ------------------------------------------------ | ------------------------- | --------------------------- |
| View - Quick Switch Scheme | UI 스키마 팝업                                   | `Ctrl` + `` ` ``          | `Control` + `` ` ``         |
| Hide All Tool Windows      | 에디터 창만 남기기 (zen 모드) / 다시 누르면 복귀 | `Ctrl` + `Shift` + `F12`  | `Command` + `Shift` + `F12` |

### 작성 (Edit)

| eng                                              | kor                                                                         | Linux `GNOME` / `Windows`                 | `macOS`                                |
| ------------------------------------------------ | --------------------------------------------------------------------------- | ----------------------------------------- | -------------------------------------- |
| Navigate - Declaration / Usages                  | 선언한 곳 찾기 / 선언한 곳에서 실행하면 사용처 찾기                         | `Ctrl` + `B`                              | `Command` + `B`                        |
| Navigate - Super Class, Method                   | 슈퍼 메서드 이동                                                            | `Ctrl` + `U`                              | `Command` + `U`                        |
| Navigate - Type Hierarchy                        | 타입 계층                                                                   | `Ctrl` + `H`                              | `Control` + `H`                        |
| Go to Line:Column...                             | 특정 라인으로 이동                                                          | `Ctrl` + `G`                              | `Command` + `L`                        |
| Reformat Code                                    | 포매팅 + 자동 들여쓰기 등                                                   | `Ctrl` + `Alt` + `L`                      | `Option` + `Command` + `L`             |
| Optimize Import                                  | 패키지 자동 임포트                                                          | `Ctrl` + `Alt` + `O`                      | `Control` + `Option` + `O`             |
| Auto Indent Line                                 | 자동 들여쓰기 (전체 선택 후 실행)                                           | `Ctrl` + `Alt` + `I`                      | `Control` + `Option` + `I`             |
| Auto Completion                                  | 자동 완성                                                                   | `Ctrl` + `Space`                          | `Control` + `Space`                    |
| Join Lines                                       | 현재 라인 + 다음 라인 합체!                                                 | `Ctrl` + `Shift` + `J`                    | `Control` + `Shift` + `J`              |
| Duplicate Line or Selection                      | 현재 라인 / 블록 영역 복제                                                  | `Ctrl` + `D`                              | `Command` + `D`                        |
| Delete Line                                      | 현재 라인 삭제                                                              | `Ctrl` + `Y`                              | `Command` + `Delete`                   |
| Move Statement Up/Down                           | 코드 라인 이동                                                              | `Ctrl` + `Shift` + `Up`/`Down`            | `Shift` + `Command` + `Up`/`Down`      |
| Find Next / Move to Next Occurrence              | 현재 커서의 단어와 같은 다음 단어로 이동                                    | `F3` / `Shift` + `F3`                     | `Command` + `G`                        |
| Add Selection for Next Occurrence                | 현재 커서의 단어와 같은 다음 단어 추가 선택                                 | `Alt` + `J`                               | `Control` + `G`                        |
| Unselect Occurrence                              | 마지막에 선택한 단어 취소                                                   | `Alt` + `Shift` + `J`                     | `Control` + `Shift` + `G`              |
| Select All Occurrences                           | 현재 커서의 단어와 같은 모든 단어 선택                                      | `Ctrl` + `Shift` + `Alt` + `J`            | `Control` + `Command` + `G`            |
| Clone Caret Above/Below                          | 위/아래에 커서 추가 ([참고](https://stackoverflow.com/a/46266920/10629432)) | `Ctrl` + `Ctrl`(**_Hold_**) + `Up`/`Down` | -                                      |
| Create Rectangular Selectioon (Column Selection) | 컬럼 셀렉션                                                                 | `Middle Click` / `Alt` + `Left Click`     | -                                      |
| Column Selection Mode (Toggle)                   | 컬럼 셀렉션 모드                                                            | `Alt` + `Shift` + `Insert`                | `Shift` + `Command` + `8`              |
| Override Methods                                 | 오버라이딩 팝업                                                             | `Ctrl` + `O`                              | `Control` + `O`                        |
| View - Parameter Info                            | 생성자, 메서드 등의 파라미터 정보 확인                                      | `Ctrl` + `P`                              | `Command` + `P`                        |
| View - Quick Definition                          | 정의 미리보기                                                               | `Ctrl` + `Shift` + `I`                    | `Option` + `Space` / `Command` + `Y`   |
| View - Quick Documentation                       | 문서(Java Doc) 미리보기                                                     | `Ctrl` + `Q`                              | `F1` / `Control` + `J`                 |
| Replace                                          | 대체 (`Shift`를 같이 누르면 경로 내 대체)                                   | `Ctrl` + `R`                              | `Command` + `R`                        |
| Generate... on Current Directory                 | 현재 디렉토리에 파일 생성                                                   | `Ctrl` + `Alt` + `Insert`                 | `Command` + `N`                        |
| Generate... on Project Window                    | 프로젝트 창에서 원하는 디렉토리에 파일 생성                                 | `Alt` + `Insert`                          | `Command` + `N` / `Control` + `Return` |
| Complete Current Statement                       | 구문 완성                                                                   | `Ctrl` + `Alt` + `Enter`                  | `Shift` + `Command` + `Return`         |
| Extend/Shrink Selection                          | 선택 확장/축소                                                              | `Ctrl` + `W` / `Ctrl` + `Shift` + `W`     | `Option` + `Up`/`Down`                 |
| Rename                                           | 이름 변경                                                                   | `Shift` + `F6`                            | `Shift` + `F6`                         |
| Edit - Find                                      | 찾기                                                                        | `Ctrl` + `F`                              | `Command` + `F`                        |
| Edit - Find in Files                             | 다른 파일에서도 찾기 (scope: project, module, directory)                    | `Ctrl` + `Shift` + `F`                    | `Command` + `Shift` + `F`              |
| Navigate - Next/Previous Highlighted Error       | 다음 이슈로 포커스 이동                                                     | `F2` / `Shift` + `F2`                     | `F2` / `Shift` + `F2`                  |
| Insert Live Template (Code Snippets)             | 코드 조각                                                                   | `Ctrl` + `J`                              | `Command` + `J`                        |

### 리팩토링 (Refactoring)

| eng              | kor                                                                      | Linux `GNOME` / `Windows`      | `macOS`                    |
| ---------------- | ------------------------------------------------------------------------ | ------------------------------ | -------------------------- |
| Refactoring this | 모든 리팩토링 기능 팝업                                                  | `Ctrl` + `Alt` + `Shift` + `T` | `Shift` + `T`              |
| Inline Variable  | 변수 인라인                                                              | `Ctrl` + `Alt` + `N`           | `Option` + `Command` + `N` |
| Go to Test       | 해당 테스트 코드로 이동                                                  | `Ctrl` + `Shift` + `T`         | `Shift` + `Command` + `T`  |
| Quick-fix        | 빠른 수정. 클래스 이름에서 실행하면 테스트 파일을 바로 생성할 수도 있다. | `Alt` + `Enter`                | `Option` + `Return`        |

### 실행 (Run)

| eng           | kor              | Linux `GNOME` / `Windows` | `macOS`                  |
| ------------- | ---------------- | ------------------------- | ------------------------ |
| Run           | 현재 타겟 실행   | `Shift` + `F10`           | `Shift` + `R`            |
| Run...        | 실행할 타겟 선택 | `Alt` + `Shift` + `F10`   | `Shift` + `Option` + `R` |
| Build project | 프로젝트 빌드    | `Ctrl` + `F9`             | `Command` + `F9`         |

## 유용한 도구

### Analyze Plugin Startup Performance

IntelliJ 시작 시 플러그인들의 영향을 확인할 수 있다.

### Do not step into the classes

> Settings > Build, Execution, Deployment > Debugger > Stepping

디버깅할 때 여기서 지정한 클래스들은 스텝에 포함되지 않는다.

- [x] Skip synthetic methods
- [ ] Skip constructors
- [x] Skip class loaders
- [x] Skip simple getters
- [x] Resume only the current thread

## Preferences

### Appearance

개인적으로 `D2Coding` 폰트보다 `Ubuntu` 폰트가 가독성이 더 좋다.

- JetBrains Mono
- IBM Plex Sans

### Encoding

Editor > File Encoding: `UTF-8`

### 자동으로 코드가 접히는 것 해제

Editor > Gerenal > Code Folding > Show code folding outline 체크해제

### 주석했을 때 맨 앞에 `//`가 들어가는 경우

Editor > Code Style > Java (다른 언어도 동일) > Code Generation > Comment Code

- [ ] Line comment at first column
  - [x] Add a space at comment start
- [x] Block comment at first column

### `import.*` 피하기

Editor > Code Style > Java > Imports

- Class count to use import with '\*': `999`
- Names count to use static import with '\*': `999`

### `Alt` + `방향키`를 눌렀을 때 단어 단위로 멈추고 싶은 경우

Editor > General > Smart Keys > Use “CamelHumps” words 체크

### `.properties` 파일에서 유니코드로 문자를 보기 싫은 경우

Editor > File Encodings > Properties Files (\*.properties)

- [x] Transparent native-to-ascii conversion

### JVM Options

> Help > Edit Custom VM Options...

`-Dfile.encoding=UTF-8`
`-Xmx2048m`

### IDE 메모리 사용량 확인하고 늘리기

- Show Memory Indicator
  - Memory Settings > Maximum Heap Size: 2048 MiB
  - `-Xmx2048m`

### SDK 소스 파일 연결

`Decompiled .class file, bytecode version: 52.0 (Java 8)`
문구가 보이면서 덩그러니 코드만 있는 파일이 보인다.

> File > Project Structure > Platfrom Settings > SDKs

(`Ctrl` + `Alt` + `Shift` + `S`)로 팝업을 띄우고 사용하려는 JDK의 Classpath와 Sourcepath를 지정해준다.
여기서 Classpath는 `bin`과 `lib` 등의 디렉토리의 상위 디렉토리이고
Sourcepath는 src.zip을 선택한다.

> File > Project Structure > Project Settings > Modules > Dependencies

해당 SDK가 포함되었는지 확인한다.

### Linux의 경우 Dock에 아이콘을 추가하려면

> Tools > Create Desktop Entry

### Commit 윈도우가 보이지 않을 경우

> Settings > Version Control > Commit

- [x] Use non-modal commit interface

## 플러그인

- [GitHub Copilot](https://plugins.jetbrains.com/plugin/17718-github-copilot)
- [SonarLint](https://plugins.jetbrains.com/plugin/7973-sonarlint): 정적 분석
  - ([Static program analysis](https://en.wikipedia.org/wiki/Static_program_analysis))
  - 설정을 원복하고 싶은 경우: Preferences > Tools > SonarLint > Rules > Restore Defaults
- [GitToolBox](https://plugins.jetbrains.com/plugin/7499-gittoolbox): Git 부가 기능
- [CodeMetrics](https://plugins.jetbrains.com/plugin/12159-codemetrics): 코드의 복잡도 계산
- [CodeGlance](https://plugins.jetbrains.com/plugin/7275-codeglance): 에디터 미니 맵
- [Waka Time](https://plugins.jetbrains.com/plugin/7425-wakatime): 프로그래밍 시간 계산
- [Rainbow CSV](https://plugins.jetbrains.com/plugin/12896-rainbow-csv): CSV에서 색으로 구분
- [Atom One Theme](https://plugins.jetbrains.com/plugin/14799-atom-one-theme)
- [Atom Material Icons](https://plugins.jetbrains.com/plugin/10044-atom-material-icons): 기본적으로 제공해주는 아이콘 외 추가 아이콘

### Optional

- 정적 분석 도구
  - [Sensei by Secure Code Warrior](https://plugins.jetbrains.com/plugin/14015-sensei-by-secure-code-warrior-/): 특정 코딩 컨벤션을 정한 후 위반 사항 알림
  - [EditorConfig](https://plugins.jetbrains.com/plugin/7294-editorconfig): `.editorconfig` 지원
  - [google-java-format](https://plugins.jetbrains.com/plugin/8527-google-java-format): 정적 분석
  - [SpotBugs](https://plugins.jetbrains.com/plugin/14014-spotbugs): FindBugs
  - [CheckStyle-IDEA](https://plugins.jetbrains.com/plugin/1065-checkstyle-idea): 정적 분석
  - [Snyk Vulnerability Scanner](https://plugins.jetbrains.com/plugin/10972-snyk-vulnerability-scanner/): 보안 취약점 스캐너
- [JPA Buddy](https://plugins.jetbrains.com/plugin/15075-jpa-buddy): JPA를 사용한다면 편리한 기능들 다수 제공
- [Presentation Assistant](https://plugins.jetbrains.com/plugin/7345-presentation-assistant): 단축키 알림
  - [Key Promoter X](https://plugins.jetbrains.com/plugin/9792-key-promoter-x): 단축키 알림
- [Maven Helper](https://plugins.jetbrains.com/plugin/7179-maven-helper)
- [File Watchers](https://plugins.jetbrains.com/plugin/7177-file-watchers): 파일 수정 시 빌드 트리거
- [Indent Rainbow](https://plugins.jetbrains.com/plugin/13308-indent-rainbow): 들여 쓴 부분을 색으로 구분
- [Rainbow Brackets](https://plugins.jetbrains.com/plugin/10080-rainbow-brackets): 중괄호(`{`, `}`)쌍을 다양한 색으로 구분
