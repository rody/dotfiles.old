# dotfiles

## Initial setup

Clone the repo
```
git clone https://github.com/rody/dotfiles --bare ./.cfg
```

Set the config alias
```
alias config='/usr/bin/git --git-dir="$HOME/.cfg/" --work-tree="$HOME"'
```

checkout the dotfiles in your home dir
```
config checkout HEAD
```
