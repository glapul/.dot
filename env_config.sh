#setting up basic dev environment only
ln -s ~/.dot/gitignore ~/.gitignore
ln -s ~/.dot/inputrc ~/.inputrc
ln -s ~/.dot/irbrc ~/.irbrc
ln -s ~/.dot/screenrc ~/.screenrc
ln -s ~/.dot/vim ~/.vim
ln -s ~/.dot/zsh ~/.zsh
ln -s ~/.dot/zsh/zshrc ~/.zshrc
ln -s ~/.dot/vimrc ~/.vimrc
echo "PATH=$HOME/bin:/usr/local/texlive/2013/bin/x86_64-linux/:$PATH" > $HOME/.zshrc.local

