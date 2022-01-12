# dotfiles

Setting up a new system:

## macOS

Install HomeBrew
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.profile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Install some packages
```
brew install --cask keepassxc
brew install rectangle
brew install tmux
brew install neofetch
brew install tig
brew install antibody
brew install stow
brew install bat
brew install neovim
brew install lima
```

Install fonts
```
brew tap homebrew/cask-fonts
brew install --cask font-victor-mono-nerd-font
```

Install Rust, and build Alacritty from sources
```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
git clone https://github.com/alacritty/alacritty.git /tmp/alacritty
make -C /tmp/alacritty app
cp -r /tmp/alacritty/target/release/osx/Alacritty.app /Applications
sudo tic -xe alacritty,alacritty-direct /tmp/alacritty/extra/alacritty.info
mkdir -p ${ZDOTDIR:-~}/.zsh_functions
grep -q zsh_functions ${ZDOTDIR:-~}/.zshrc || echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc
cp /tmp/alacritty/extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty
```
