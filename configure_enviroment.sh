echo '---'
echo 'Configurando ZSH'
echo '---'
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
cp zshrc ~/.zshrc
chsh -s /bin/zsh
