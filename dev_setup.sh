/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$($(brew --prefix)/bin/brew shellenv)"' >> ~/.zprofile
eval "$($(brew --prefix)/bin/brew shellenv)"
brew install zsh
