#!/bin/bash
sudo apt install build-essential tmux cmake git npm python3-pip curl gedit  && sudo pacman -S base-devel tmux cmake neovim gedit python-pip npm  git 
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
fc-cache -f -v
mkdir "${HOME}/.npm-packages"
npm config set prefix "${HOME}/.npm-packages"
curl -fsSL https://bun.sh/install | bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo rm /usr/lib/python3.11/EXTERNALLY-MANAGED
rm ~/.zshrc
ln -p ./.zshrc ~/.zshrc
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
