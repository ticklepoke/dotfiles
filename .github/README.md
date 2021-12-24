# Darwin

## Installing to a new machine

```sh
echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc

exec zsh

echo ".dotfiles.git" >> .gitignore

git clone --bare git@github.com:ticklepoke/dotfiles.git $HOME/.dotfiles.git

dotfiles config --local status.showUntrackedFiles no

dotfiles fetch

dotfiles switch darwin
```

## Creating a new setup

```sh
git init --bare $HOME/.dotfiles.git

echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"' >> $HOME/.zshrc

exec zsh

dotfiles config --local status.showUntrackedFiles no

dotfiles checkout -b <your system architecture>

dotfiles remote add origin git@github.com:ticklepoke/dotfiles.git
```
