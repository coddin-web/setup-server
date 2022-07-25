#!/bin/bash
#
# Install a few default tools when setting up a server
#
# Author: Marius Posthumus <marius@coddin.nl>
set -eu

# TODO work with variable settings for e.g. installing php-VERSION
# TODO detect if root user when doing `apt` installs

sudo apt install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

curl -Lo ~/bin/rmate https://raw.githubusercontent.com/textmate/rmate/master/bin/rmate
chmod a+x ~/bin/rmate
