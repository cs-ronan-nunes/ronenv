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

echo 'Sync Terminal Preferences'
mkdir ~/.SyncTerminal
git clone git@github.com:ronanrodrigo/SyncTerminal.git ~/.SyncTerminal

echo 'Sync Xcode Preferences'
mkdir -p ~/Library/Developer/Xcode/UserData 
cd ~/Library/Developer/Xcode/UserData
git init
git remote add origin git@github.com:ronanrodrigo/SyncXcode.git
git fetch
git checkout -t origin/master

echo 'Sync Sublime Text Preferences'
mkdir -p ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User 
git init
git remote add origin git@github.com:ronanrodrigo/SyncSublime.git
git fetch
git checkout -t origin/master
