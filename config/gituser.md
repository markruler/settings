# Git User Config

## .gitconfig

[user]
  name = "cxsu"
  email = "imcxsu@gmail.com"

## GPG(GNU Privacy Guard)

- [GPG(GNU PG)를 이용해 git 커밋에 서명하는 방법](https://www.44bits.io/ko/post/add-signing-key-to-git-commit-by-gpg)

```bash
# gpg --gen-key
gpg --full-generate-key
# pub   rsa3072 2021-02-08 [SC] [expires: 2023-02-08]
#       85B5FA0A8A67AA1A20FA7D4BE15D651143742DAD
# uid                      Test RealName <test@email.com>
# sub   rsa3072 2021-02-08 [E] [expires: 2023-02-08]
git config --global user.signingkey 85B5FA0A8A67AA1A20FA7D4BE15D651143742DAD
git config --global commit.gpgsign true
git config --global gpg.program gpg
export GPG_TTY=$(tty)
git commit
git log --show-signature -1
```

## [Github credentials](https://help.github.com/en/github/using-git/getting-started-with-git-and-github)

### [Windows 10](https://cmatskas.com/how-to-update-your-git-credentials-on-windows/)
1. Control Panel (제어판)
2. Credential Manager (자격 증명 관리자)
3. Generic Credentials (일반 자격 증명)
4. Find githun.com
5. Edit or delete the entry accordingly.

### [Mac OS X](https://help.github.com/en/github/using-git/updating-credentials-from-the-osx-keychain)

1. In Finder, search for the Keychain Access app.
2. In Keychain Access, search for github.com.
3. Find the "internet password" entry for github.com.
4. Edit or delete the entry accordingly.

#### Deleting your credentials via the command line

```zsh
$ git credential-osxkeychain erase
host=github.com
protocol=https
> [Press Return]
```
