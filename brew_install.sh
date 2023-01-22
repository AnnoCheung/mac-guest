#!/bin/zsh

cd ~
git clone https://github.com/Homebrew/brew homebrew

eval "$(homebrew/bin/brew shellenv)"
brew update --force --quiet
chmod -R go-w "$(brew --prefix)/share/zsh"

echo 'eval "$(homebrew/bin/brew shellenv)"' >> ~/.zshrc
#Create brew shell completion in ~/.zshrc
echo '#Brew Shell Completion'$'\n''if type brew &>/dev/null'$'\n''then'$'\n''  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"'$'\n'$'\n''  autoload -Uz compinit'$'\n''  compinit'$'\n''fi' >> ~/.zshrc
