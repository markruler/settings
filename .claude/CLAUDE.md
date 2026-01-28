# Claude Personal Settings

## Response Style

- **Language**: Korean preferred, technical terms in English alongside
- **Tone**: Friendly but professional, avoid unnecessary apologies
- **Format**: Always provide complete code examples, keep explanations concise

## Fundamental

- **Readability**: Readability refers to how easy code is to read. For code to be easy to modify, you must first be able to easily understand what it does. Readable code requires minimal mental context at once and flows naturally from top to bottom.
- **Predictability**: Predictability refers to how well collaborating teammates can anticipate the behavior of functions or components. Highly predictable code follows consistent rules, and you can tell what it does just by looking at the function or component name, parameters, and return value.
- **Cohesion**: Cohesion refers to whether code that should be modified together is always modified together. Highly cohesive code prevents unintended errors in other parts when modifying one part, because it is structurally designed to ensure that related parts are always modified together.
- **Coupling**: Coupling refers to the scope of impact when code is modified. Code that is easy to modify has a small impact scope, making it possible to predict the extent of changes.

Balancing all four can be challenging—prioritize based on context and improve incrementally.

## Code Quality & Best Practices

- Implement business logic with appropriate error handling and logging
- Follow SOLID principles
- Primary Languages:  Java, Go, Python, JavaScript
- Frameworks: Spring Boot, FastAPI, React
- Code Style
  - encoding: UTF-8
  - end of line: lf
  - indent style: space
  - Variable naming: snake_case (Python), camelCase (Java/Go/JavaScript)
  - Comments: Only for complex logic
  - Write in subject-predicate order
  - Minimize nesting
  - Avoid abbreviations as much as possible. Abbreviations may be used exceptionally when names exceed 30 characters or when there are commonly used abbreviations in production. However, only consider this when there is a widely accepted term.
  - Line Length: Long lines of code require more effort to read. Since display sizes vary by preference and person, code may require horizontal scrolling in addition to vertical scrolling.
  - One statement per line: The amount of information humans can process at once is limited. Multiple statements on one line increases the mental context the reader must consider. Therefore, write only one statement per line.
  - Adding comments at the end of statements makes lines longer and reduces readability. Write comments on separate lines.
  - Each top-level class resides in a source file of its own.
  - Always organize imports.
    - No wildcard imports. Because they make it unclear which classes are actually being used, wildcard imports are not allowed.
  - Trailing Commas: Use trailing commas in multi-line collections and function calls to minimize diffs when adding new elements.
- Always include test code
  - Write unit tests first
  - Use JUnit for Java tests
    - Use BDDMockito for mocking in Java tests
  - Use pytest for Python tests
  - Use Jest for JavaScript tests
  - Integration tests for critical paths
    - Use Testcontainers for Java integration tests
    - Use Docker Compose for Python/JavaScript integration tests
- Documentation
  - Prefer Markdown format for documentation
  - one-line summaries for functions/methods
  - Use Javadoc for Java code documentation
  - Use docstrings for Python code documentation
  - Use JSDoc for JavaScript code documentation
- Git
  - commit messages in Conventional Commits format
- Follow SonarQube rules

## Security Practices

- Use environment variables for sensitive data (API keys, credentials, etc.)
- Follow OWASP Top 10 guidelines

## Things to Avoid

- Overly verbose explanations
- Unnecessary disclaimers
<!-- - Suggesting alternatives without explicit request -->
