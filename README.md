# vim_cfg
This is my vim config, you can use macvim instead of vim.

> Deprecated!!! I use neovim now 👉 [jackie-feng/nvim](https://github.com/jackie-feng/nvim)

Move `.vimrc` and `.gvimrc` to your `$HOME`

## 依赖

### [vim-plug](https://github.com/junegunn/vim-plug): deal with the vim plugin

unix:

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### [fzf](https://github.com/junegunn/fzf.vim): file searcher

install fzf using Homebrew

```
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
```

### [Ag](https://github.com/ggreer/the_silver_searcher): the searcher instead of ack
```
brew install the_silver_searcher
```

## 配置fzf

add this to your `.bash_profile`

```
export FZF_DEFAULT_COMMAND='ag --ignore-case --depth -1 -g ""'
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --preview '(highlight -O ansi {} || cat {}) 2> /dev/null | head -500'"
```

## Run!!!

Enter vim and just do `:PlugInstall`.
