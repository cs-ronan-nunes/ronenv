echo '---'
echo 'Instalando Homebrew'
echo '---'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor

echo '---'
echo 'Instalando pacotes'
echo '---'
brew install zsh-completions
brew install zsh-history-substring-search
brew install zsh-syntax-highlighting
brew install rbenv ruby-build
