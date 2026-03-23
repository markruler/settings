# Claude Personal Settings

## Response Style

- **Language**: 한국어를 기본으로 사용하되, 기술 용어는 영어를 병기한다
- **Tone**: 친근하지만 전문적인 어조를 사용하며, 불필요한 사과는 하지 않는다
- **Format**: 항상 완전한 코드 예시를 제공하고, 설명은 간결하게 작성한다

## Fundamental

- **Readability**: 코드를 얼마나 쉽게 읽을 수 있는지를 의미한다. 코드를 쉽게 수정하려면 먼저 그 코드가 무엇을 하는지 쉽게 이해할 수 있어야 한다. 읽기 좋은 코드는 한 번에 필요한 맥락이 최소화되어 있고, 위에서 아래로 자연스럽게 흐른다.
- **Predictability**: 협업하는 팀원이 함수나 컴포넌트의 동작을 얼마나 잘 예측할 수 있는지를 의미한다. 예측 가능한 코드는 일관된 규칙을 따르며, 함수나 컴포넌트의 이름, 파라미터, 반환값만 보고도 동작을 알 수 있다.
- **Cohesion**: 함께 수정되어야 하는 코드가 항상 함께 수정되는지를 의미한다. 응집도가 높은 코드는 한 부분을 수정할 때 다른 부분에서 의도치 않은 오류가 발생하지 않도록 구조적으로 설계되어 있다.
- **Coupling**: 코드를 수정했을 때 영향 범위가 어디까지인지를 의미한다. 수정하기 쉬운 코드는 영향 범위가 작아서 변경의 범위를 예측할 수 있다.

네 가지를 모두 균형 있게 맞추기는 어려우므로, 상황에 따라 우선순위를 정하고 점진적으로 개선한다.

## Code Quality & Best Practices

- 비즈니스 로직에는 적절한 에러 핸들링과 로깅을 구현한다
- SOLID 원칙을 따른다
- Primary Languages: Java, Go, Python, JavaScript
- Frameworks: Spring Boot, FastAPI, React
- Code Style
  - encoding: UTF-8
  - end of line: lf
  - indent style: space
  - Variable naming: snake_case (Python), camelCase (Java/Go/JavaScript)
  - Comments: 복잡한 로직에만 주석을 작성한다
  - 주어-서술어 순서로 작성한다
  - 중첩(nesting)을 최소화한다
  - 약어 사용을 최대한 지양한다. 이름이 30자를 초과하거나 실무에서 통용되는 약어가 있는 경우에만 예외적으로 허용한다. 단, 널리 통용되는 용어가 있을 때만 고려한다.
  - Line Length: 긴 코드 라인은 읽는 데 더 많은 노력이 필요하다. 디스플레이 크기는 사람마다 다르므로, 코드가 수직 스크롤뿐 아니라 수평 스크롤까지 필요할 수 있다.
  - One statement per line: 사람이 한 번에 처리할 수 있는 정보량은 제한적이다. 한 줄에 여러 문장을 작성하면 읽는 사람이 고려해야 할 맥락이 늘어난다. 따라서 한 줄에 하나의 문장만 작성한다.
  - End-of-line comments: 문장 끝에 주석을 추가하면 줄이 길어지고 가독성이 떨어진다. 주석은 별도의 줄에 작성한다.
  - Class per file: 각 최상위 클래스는 별도의 소스 파일에 작성한다.
  - Imports: 항상 import를 정리한다.
    - No wildcard imports: 어떤 클래스를 실제로 사용하는지 불분명해지므로 와일드카드 import는 허용하지 않는다.
  - Trailing Commas: 여러 줄로 작성하는 컬렉션이나 함수 호출에서는 trailing comma를 사용하여 새 요소 추가 시 diff를 최소화한다.
  - Method Parameters: 각 파라미터를 별도의 줄에 작성하고 닫는 괄호는 마지막 파라미터 다음 줄에 둔다.
- Test
  - 항상 테스트 코드를 포함한다
  - 단위 테스트를 먼저 작성한다
  - Java 테스트는 JUnit을 사용한다
    - Java 테스트에서 mocking은 BDDMockito를 사용한다
  - Python 테스트는 pytest를 사용한다
  - JavaScript 테스트는 Jest를 사용한다
  - 핵심 경로에 대해 통합 테스트를 작성한다
    - Java 통합 테스트는 Testcontainers를 사용한다
    - Python/JavaScript 통합 테스트는 Docker Compose를 사용한다
- Documentation
  - 문서는 Markdown 형식을 사용한다
  - 모듈, 함수, 클래스, 메소드 정의에는 한 줄 요약을 작성한다
    - Java 코드 문서화에는 Javadoc을 사용한다
    - Python 코드 문서화에는 docstring을 사용한다
    - JavaScript 코드 문서화에는 JSDoc을 사용한다
- Git
  - 커밋 메시지는 Conventional Commits 형식을 따른다
- SonarQube 규칙을 따른다

## Security Practices

- 민감한 데이터(API 키, 자격 증명 등)는 환경 변수를 사용한다
- OWASP Top 10 가이드라인을 따른다

## Things to Avoid

- 지나치게 장황한 설명
- 불필요한 면책 조항
<!-- - 명시적 요청 없이 대안을 제안하는 것 -->

## Coding Workflow

- 코드 변경이 필요한 작업은 항상 plan mode로 시작한다. (EnterPlanMode)
- 계획을 세우고 오버 엔지니어링이 아닌지 검토한다.
- 사용자 승인을 받은 후 구현을 시작한다.
- 구현 완료 후 아래 항목을 검토한다.
  - 구현이 목적에 맞게 잘 됐는지
  - 잠재적 버그나 보안 이슈는 없는지
  - 사이드 이펙트는 없는지
- 코드 품질이 충분히 높은지 검토한다.
- 불필요해진 코드가 있다면 정리한다.
- 이대로 배포해도 될 퀄리티인지 다시 한번 검토한다.
