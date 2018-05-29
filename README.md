# Vim Configuration for Golang
This document is for initial settings on Mac OS.
This help you what sets developer environment easy.


**my .vimrc for mac**

## Xcode command line tool install
```$ xcode-select --install```

## [iTerm2](https://www.iterm2.com/) Install

### Download [Theme](http://iterm2colorschemes.com/)(Desert)
```$ curl -o Desert.itermcolors https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Desert.itermcolors```

Oceanic-next
```$ wget https://github.com/mhartington/oceanic-next-iterm/archive/master.zip```

### Import theme to iTerm2 after downloading theme
>Iterm2 > Preferences... > Profiles > Colors > Color Presets > Import

## [Homebrew](https://github.com/Homebrew/brew) install
### Install CMake
```$ brew install cmake```

### ctags Install
```$ brew install ctags```

## [Vundle](https://github.com/VundleVim/Vundle.vim) Install
```$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim```

### Install Plugin
Launch ```vim``` and run ```:PluginInstall```

### Compile [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
```sh
$ cd ~/.vim/bundle/YouCompleteMe/
$ ./install.py --gocode-completer
```
Launch ```vim```, open ```.go``` file and run ```:GoInstallBinaries```

