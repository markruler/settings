# JetBrains의 IntelliJ IDEA

- [JetBrains의 IntelliJ IDEA](#jetbrains의-intellij-idea)
  - [자주 쓰는 단축키](#자주-쓰는-단축키)
    - [슈퍼파워](#슈퍼파워)
    - [이동 (Navigate)](#이동-navigate)
    - [화면 (View)](#화면-view)
    - [작성 (Edit)](#작성-edit)
    - [리팩토링 (Refactoring)](#리팩토링-refactoring)
    - [실행 (Run)](#실행-run)
  - [유용한 도구](#유용한-도구)
    - [Analyze Plugin Startup Performance](#analyze-plugin-startup-performance)
    - [Do not step into the classes](#do-not-step-into-the-classes)
  - [문제 해결](#문제-해결)
    - [SDK 소스 파일 연결](#sdk-소스-파일-연결)
    - [Encoding](#encoding)
    - [Linux 아이콘](#linux-아이콘)
    - [플러그인](#플러그인)

## 자주 쓰는 단축키

- [Reference Card](https://resources.jetbrains.com/storage/products/intellij-idea/docs/IntelliJIDEA_ReferenceCard.pdf)

### 슈퍼파워

| eng                                     | kor                      | Linux `GNOME` / `Windows` |
| --------------------------------------- | ------------------------ | ------------------------- |
| Search Everywhere                       | 모든 것을 검색할 수 있음 | double `Shift`            |
| Run Anything (Command or Configuration) | 모든 것을 실행할 수 있음 | double `Ctrl`             |
| Settings                                | 세팅                     | `Ctrl` + `Alt` + `S`      |
| Find Action                             | 기능 찾기                | `Ctrl` + `Shift` + `A`    |

### 이동 (Navigate)

| eng                   | kor                            | Linux `GNOME` / `Windows`  |
| --------------------- | ------------------------------ | -------------------------- |
| Terminal              | 터미널 열기                    | `Alt` + `F12`              |
| Tool Window - Project | 프로젝트 창                    | `Alt` + `1`                |
| Tool Window - Run     | 실행 창                        | `Alt` + `4`                |
| Focus Editor          | 다시 에디터 창으로 포커스 이동 | `Esc`                      |
| Next / Previous Tab   | 에디터 창에서 파일 간 이동     | `Alt` + `Left/Right Arrow` |
| Recent files Popup    | 최근 파일 보기                 | `Ctrl` + `E`               |
| Close tab             | 현재 탭 닫기                   | `Ctrl` + `F4`              |
| Switcher              | 창 간 이동                     | `Ctrl` + `Tab`             |
| Change View           | 뷰 변경                        | `Ctrl` + `Shift` + `1`     |

### 화면 (View)

| eng                        | kor                                              | Linux `GNOME` / `Windows` |
| -------------------------- | ------------------------------------------------ | ------------------------- |
| View - Quick Switch Scheme | UI 스키마 팝업                                   | `Ctrl` + `` ` ``          |
| Hide All Tool Windows      | 에디터 창만 남기기 (zen 모드) / 다시 누르면 복귀 | `Ctrl` + `Shift` + `F12`  |

### 작성 (Edit)

| eng                                              | kor                                                                         | Linux `GNOME` / `Windows`                 |
| ------------------------------------------------ | --------------------------------------------------------------------------- | ----------------------------------------- |
| Navigate - Declaration / Usages                  | 선언한 곳 찾기 / 선언한 곳에서 실행하면 사용처 찾기                         | `Ctrl` + `B`                              |
| Navigate - Super Method                          | 슈퍼 메서드 이동                                                            | `Ctrl` + `U`                              |
| Navigate - Type Hierarchy                        | 타입 계층                                                                   | `Ctrl` + `H`                              |
| Go to Line:Column...                             | 특정 라인으로 이동                                                          | `Ctrl` + `G`                              |
| Reformat Code                                    | 포매팅 + 자동 들여쓰기 등                                                   | `Ctrl` + `Alt` + `L`                      |
| Optimize Import                                  | 패키지 자동 임포트                                                          | `Ctrl` + `Alt` + `O`                      |
| Auto Indent Line                                 | 자동 들여쓰기 (전체 선택 후 실행)                                           | `Ctrl` + `Alt` + `I`                      |
| Auto Completion                                  | 자동 완성                                                                   | `Ctrl` + `Space`                          |
| Join Lines                                       | 현재 라인 + 다음 라인 합체!                                                 | `Ctrl` + `Shift` + `J`                    |
| Add Selection for Next Occurrence                | 현재 커서의 단어와 같은 다음 단어 선택                                      | `Alt` + `J`                               |
| Unselect Occurrence                              | 마지막에 선택한 단어 취소                                                   | `Alt` + `Shift` + `J`                     |
| Select All Occurrences                           | 현재 커서의 단어와 같은 모든 단어 선택                                      | `Ctrl` + `Shift` + `Alt` + `J`            |
| Clone Caret Above/Below                          | 위/아래에 커서 추가 ([참고](https://stackoverflow.com/a/46266920/10629432)) | `Ctrl` + `Ctrl`(**_Hold_**) + `Up`/`Down` |
| Create Rectangular Selectioon (Column Selection) | 컬럼 셀렉션                                                                 | `Middle Click` / `Alt` + `Left Click`     |
| Toggle Column Selection Mode                     | 컬럼 셀렉션 모드                                                            | `Alt` + `Shift` + `Insert`                |
| Duplicate Current Line                           | 현재 라인 복제                                                              | `Ctrl` + `D`                              |
| Delete Line                                      | 현재 라인 삭제                                                              | `Ctrl` + `Y`                              |
| Override Methods                                 | 오버라이딩 팝업                                                             | `Ctrl` + `O`                              |
| View - Parameter Info                            | 생성자, 메서드 등의 파라미터 정보 확인                                      | `Ctrl` + `P`                              |
| View - Quick Definition                          | 정의 미리보기                                                               | `Ctrl` + `Shift` + `I`                    |
| View - Quick Documentation                       | 문서(Java Doc) 미리보기                                                     | `Ctrl` + `Q`                              |
| Replace                                          | 대체 (`Shift`를 같이 누르면 경로 내 대체)                                   | `Ctrl` + `R`                              |
| New File on Current Directory                    | 현재 디렉토리에 파일 생성                                                   | `Ctrl` + `Alt` + `Insert`                 |
| New File on Project Window                       | 프로젝트 창에서 원하는 디렉토리에 파일 생성                                 | `Alt` + `Insert`                          |
| Complete Current Statement                       | 구문 완성                                                                   | `Ctrl` + `Alt` + `Enter`                  |
| Extend/Shrink Selection                          | 선택 확장/축소                                                              | `Ctrl` + `W` / `Ctrl` + `Shift` + `W`     |
| Rename                                           | 이름 변경                                                                   | `Shift` + `F6`                            |
| Edit - Find                                      | 찾기                                                                        | `Ctrl` + `F`                              |
| Edit - Find in Files                             | 다른 파일에서도 찾기 (scope: project, module, directory)                    | `Ctrl` + `Shift` + `F`                    |
| Move Statement Up/Down                           | 코드 라인 이동                                                              | `Ctrl` + `Shift` + `Up`/`Down`            |
| Navigate - Next/Previous Highlighted Error       | 다음 이슈로 포커스 이동                                                     | `F2` / `Shift` + `F2`                     |
| Next/Previous Occurrence                         | 이후/이전 검색 결과 이동                                                    | `F3` / `Shift` + `F3`                     |
| Insert Live Template (Code Snippets)             | 코드 조각                                                                   | `Ctrl` + `J`                              |

### 리팩토링 (Refactoring)

| eng              | kor                                                                      | Linux `GNOME` / `Windows`      |
| ---------------- | ------------------------------------------------------------------------ | ------------------------------ |
| Refactoring this | 모든 리팩토링 기능 팝업                                                  | `Ctrl` + `Alt` + `Shift` + `T` |
| Inline Variable  | 변수 인라인                                                              | `Ctrl` + `Alt` + `N`           |
| Go to Test       | 해당 테스트 코드로 이동                                                  | `Ctrl` + `Shift` + `T`         |
| Quick-fix        | 빠른 수정. 클래스 이름에서 실행하면 테스트 파일을 바로 생성할 수도 있다. | `Alt` + `Enter`                |

### 실행 (Run)

| eng           | kor              | Linux `GNOME` / `Windows` |
| ------------- | ---------------- | ------------------------- |
| Run           | 현재 타겟 실행   | `Shift` + `F10`           |
| Run...        | 실행할 타겟 선택 | `Alt` + `Shift` + `F10`   |
| Build project | 프로젝트 빌드    | `Ctrl` + `F9`             |

## 유용한 도구

### Analyze Plugin Startup Performance

IntelliJ 시작 시 플러그인들의 영향을 확인할 수 있다.

### Do not step into the classes

> `Build, Execution, Deployment` > `Debugger` > `Stepping`

디버깅할 때 여기서 지정한 클래스들은 스텝에 포함되지 않는다.

- [x] Skip synthetic methods
- [ ] Skip constructors
- [x] Skip class loaders
- [x] Skip simple getters
- [x] Resume only the current thread

## 문제 해결

### SDK 소스 파일 연결

> Decompiled .class file, bytecode version: 52.0 (Java 8)

위와 같은 문구가 보이면서 덩그라니 코드만 있는 파일이 보인다면
`Ctrl` + `Shift` + `Alt` + `S`를 눌러서 "Project Structure" 팝업을 띄우고
`Platfrom Settings`-`SDKs`에서 사용하려는 JDK의 Classpath와 Sourcepath를 지정해준다.
여기서 Classpath는 `bin`과 `lib` 등의 디렉토리의 상위 디렉토리이고
Sourcepath는 src.zip을 선택한다.
그 후 `Project Settings`-`Modules`에 해당 SDK가 포함되어 있는지 확인한다.

### Encoding

`Settings` - `File Encoding`: UTF-8

### Linux 아이콘

`Tools` - `Create Desktop Entry`로 Dock에 아이콘을 생성할 수 있다.

### 플러그인

- [SonarLint](https://plugins.jetbrains.com/plugin/7973-sonarlint): 문제의 소지가 될 수 있는 코드 알림 ([Static program analysis](https://en.wikipedia.org/wiki/Static_program_analysis))
- [CodeMetrics](https://plugins.jetbrains.com/plugin/12159-codemetrics): 코드의 복잡도 계산
- [google-java-format](https://plugins.jetbrains.com/plugin/8527-google-java-format)
- [CheckStyle-IDEA](https://plugins.jetbrains.com/plugin/1065-checkstyle-idea)
- [EditorConfig](https://plugins.jetbrains.com/plugin/7294-editorconfig): `.editorconfig` 지원
- [Snyk Vulnerability Scanner](https://plugins.jetbrains.com/plugin/10972-snyk-vulnerability-scanner/): 보안 취약점 스캐너
- [Presentation Assistant](https://plugins.jetbrains.com/plugin/7345-presentation-assistant): 단축키 알림
  - [Key Promoter X](https://plugins.jetbrains.com/plugin/9792-key-promoter-x): 단축키 알림
- [Sensei by Secure Code Warrior](https://plugins.jetbrains.com/plugin/14015-sensei-by-secure-code-warrior-/): 특정 코딩 컨벤션을 정한 후 위반 사항 알림
- [CodeGlance](https://plugins.jetbrains.com/plugin/7275-codeglance): 에디터 미니 맵
- [Waka Time](https://plugins.jetbrains.com/plugin/7425-wakatime): 프로그래밍 시간 계산
- [Rainbow Brackets](https://plugins.jetbrains.com/plugin/10080-rainbow-brackets): 중괄호(`{`, `}`)쌍을 다양한 색으로 구분
- [Indent Rainbow](https://plugins.jetbrains.com/plugin/13308-indent-rainbow): 들여 쓴 부분을 색으로 구분
- [Rainbow CSV](https://plugins.jetbrains.com/plugin/12896-rainbow-csv): CSV에서 색으로 구분
- [JPA Buddy](https://plugins.jetbrains.com/plugin/15075-jpa-buddy): JPA를 사용한다면 편리한 기능들 다수 제공
- [Maven Helper](https://plugins.jetbrains.com/plugin/7179-maven-helper)
- [File Watchers](https://plugins.jetbrains.com/plugin/7177-file-watchers): 파일 수정 시 빌드 트리거
- [Codota](https://plugins.jetbrains.com/plugin/7638-codota-ai-autocomplete-for-java-and-javascript/): AI 자동완성 - 성능 저하 가능
  - [Tabnine](https://plugins.jetbrains.com/plugin/12798-tabnine-ai-autocomplete-javascript-c-python-ruby-rust-go-php--/)
- [Extra Icons](https://plugins.jetbrains.com/plugin/11058-extra-icons/): 기본적으로 제공해주는 아이콘 외 추가 아이콘
