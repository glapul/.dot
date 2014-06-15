# Automatic Ubuntu linux configuration

	DOTPATH=`pwd`

# Install basic stuff and symlink config files

	sudo apt-get -y install  git-core pidgin  python ruby ruby-dev g++ zsh screen curl wget gnome-terminal pypy ttf-inconsolata libxss1 dropbox rlwrap build-essential cmake python-dev
	
	cd $HOME
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i google-chrome*.deb
	rm google-chrome*.deb

	ln -s ~/.dot/gitignore ~/.gitignore
	ln -s ~/.dot/inputrc ~/.inputrc
	ln -s ~/.dot/irbrc ~/.irbrc
	ln -s ~/.dot/screenrc ~/.screenrc
	ln -s ~/.dot/zsh ~/.zsh
	ln -s ~/.dot/zsh/zshrc ~/.zshrc
	mkdir ~/Dropbox
	mkdir ~/Dropbox/bin
	ln -s ~/Dropbox/bin ~/bin

# Vim install
	cd $DOTPATH ; sudo ./vim-installs.sh

# Nodejs install
	cd $DOTPATH ; sudo ./nodejs-install.sh

# Rubygems and RVM install
	cd $DOTPATH ; sudo ./rubygems-install.sh

# Heroku install
	wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# texlive install (check version and shell)
	cd $DOTPATH ; sudo ./texlive-install.sh

