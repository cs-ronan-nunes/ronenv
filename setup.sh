echo 'Setup ZSH\n'
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
cp zshrc ~/.zshrc
chsh -s /bin/zsh
echo 'eval "$(rbenv init -)"' >> ~/.zshrc

echo '\nSetup GIT\n'
read -p 'Your full name: ' user_name
read -p 'Your e-mail: ' user_mail
git config --global push.default simple
git config --global user.name "$user_name"
git config --global user.email "$user_mail"
git config --global color.ui true
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

echo '\nIntalling Homebrew\n'
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo '\nIntalling Bash Packages\n'
brew install zsh-completions
brew install zsh-history-substring-search
brew install zsh-syntax-highlighting
brew install autojump
brew install rbenv ruby-build

echo '\nInstalling APPs from Cask\n'
echo "\nexport HOMEBREW_CASK_OPTS=\"--appdir=/Applications\"" >> .zshrc
brew install cask
brew cask install sublime
brew cask install appcleaner
brew cask install charles
brew cask install skype
brew cask install google-chrome
brew cask install shiftit
brew cask install sourcetree
brew cask install opensim
brew cask install postman
brew cask install playnow
brew cask install appcode
brew cask install spotify
brew cask install genymotion

echo '\nInstalling APPs from Mac APP Store\n'
brew install mas
mas install 970432740 # Right Click Booster
mas install 935250717 # MonthlyCal
mas install 449589707 # Dash
mas install 409789998 # Twitter
mas install 595191960 # CopyClip
mas install 809625456 # Asset Catalog Creator
mas install 497799835 # Xcode
mas install 883070818 # SafeInCloud
mas install 411673888 # EasyFind
