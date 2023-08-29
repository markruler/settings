# Settings

## CRLF 포함된 파일 찾기

- [1번째](https://stackoverflow.com/questions/73833#answer-73969)

```sh
find . -not -type d -exec file "{}" ";" | grep CRLF
# ./ide/.editorconfig: ASCII text, with very long lines (2299), with CRLF line terminators
# ./ide/jetbrains-intellij.md: Unicode text, UTF-8 text, with CRLF line terminators
# ./ide/eclipse-java-google-style.xml: XML 1.0 document, ASCII text, with CRLF line terminators
```

- [2번째](https://stackoverflow.com/questions/73833#answer-3184434)

```sh
grep -Ilr $'\r$' -r .
# ./ide/.editorconfig
# ./ide/jetbrains-intellij.md
# ./ide/eclipse-java-google-style.xml
```

## LF <=> CRLF

```sh
file file.txt
# file.txt: Unicode text, UTF-8 text, with CRLF line terminators
```

- DOS to Unix

```sh
vim file.txt -c "set ff=unix" -c ":wq"
```

```sh
file file.txt
# file.txt: Unicode text, UTF-8 text
```

- Unix to DOS

```sh
vim file.txt -c "set ff=dos" -c ":wq"
```

```sh
file file.txt
# file.txt: Unicode text, UTF-8 text, with CRLF line terminators
```
