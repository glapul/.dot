sudo apt-get -y install  git-core pidgin vim-gnome python ruby ruby-dev g++ zsh screen curl wget gnome-terminal pypy ttf-inconsolata libxss1 dropbox
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
# Load nvm and install latest production node
source $HOME/.nvm/nvm.sh
nvm install v0.10.12
nvm use v0.10.12
npm install -g jshint
sudo apt-get install -y rlwrap
sudo apt-get -f install
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get -y install sublime-text
ln -s ~/.dot/gitignore ~/.gitignore
ln -s ~/.dot/inputrc ~/.inputrc
ln -s ~/.dot/irbrc ~/.irbrc
ln -s ~/.dot/screenrc ~/.screenrc
ln -s ~/.dot/vim ~/.vim
ln -s ~/.dot/zsh ~/.zsh
ln -s ~/.dot/zsh/zshrc ~/.zshrc
ln -s ~/.dot/vimrc ~/.vimrc
mkdir ~/Dropbox
mkdir ~/Dropbox/bin
curl -L https://get.rvm.io | bash
wget http://rubyforge.org/frs/download.php/76729/rubygems-1.8.25.tgz
tar -xvzf rubygems-1.8.25.tgz 
cd rubygems-1.8.25/
sudo ruby setup.rb
cd ..
rm -R rubygems*
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
ln -s ~/Dropbox/bin ~/bin
# texlive
wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar -xvzf install-tl-unx.tar.gz 
cd install-tl*
sudo ./install-tl
cd ..
echo "PATH=$HOME/bin:/usr/local/texlive/2013/bin/x86_64-linux/:$PATH" > $HOME/.zshrc.local

