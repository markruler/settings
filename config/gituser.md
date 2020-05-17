# Git User Config

## .gitconfig

[user]
  name = "markruler"
  email = "csu0414@gmail.com"

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