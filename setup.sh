echo 'Configurando ZSH'
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
cp zshrc ~/.zshrc
chsh -s /bin/zsh
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

echo 'Instalando Homebrew'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor

echo 'Instalando pacotes'
brew install zsh-completions
brew install zsh-history-substring-search
brew install zsh-syntax-highlighting
brew install autojump
brew install rbenv ruby-build

brew install caskroom/cask/brew-cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew cask install slack
brew cask install google-chrome
brew cask install sequel-pro
brew cask install pycharm
brew cask install xamarin
brew cask install virtualbox
brew cask install genymotion
brew cask install sourcetree
brew cask install sublime-text
brew cask install shiftit
brew cask install transmission

echo 'Configurando git'
git config --global push.default simple
git config --global user.name "Ronan Rodrigo Nunes"
git config --global user.email "ronan.nunes@me.com"
git config --global core.editor nano
git config --global color.ui true
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
