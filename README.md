# Settings

```sh
# Home directory
git clone git@github.com:markruler/settings.git
yes | cp -r ~/settings/. .
```

```sh
git reset --hard HEAD
git pull
```

- [Vim 에디터 명령어 정리](https://markruler.github.io/posts/shell/vim-editor-shortcuts/)

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```sh
# in vim editor
:source %
:PlugInstall
```

