#! /usr/bin/env bash

OLD_PWD=$(pwd)

# Additional ZShell configs
ADDITIONAL_CONFIGS='source ~/.config/zshrc/*'
if [[ ! $( grep "$ADDITIONAL_CONFIGS" ~/.zshrc ) ]] ; then
  echo "Adding custom additional configs from $ADDITIONAL_CONFIGS to ~/.zshrc" ;
  echo $ADDITIONAL_CONFIGS >> ~/.zshrc ;
fi ;

# Conda-zsh-completion
echo 'Installing / updating conda-zsh-completion'
git clone https://github.com/esc/conda-zsh-completion.git ~/.conda-zsh-completion
cd ~/.conda-zsh-completion
git pull
echo 'Setting up conda zsh completion configurations'
echo 'fpath+=~/.conda-zsh-completion' > ~/.config/zshrc/conda-zsh-completion.sh
echo 'compinit conda' >> ~/.config/zshrc/conda-zsh-completion.sh

# Reload current config
source ~/.config/zshrc/conda-zsh-completion.sh

cd $OLD_PWD