# Automatic Ubuntu linux configuration

	DOTPATH=`pwd`

# Install basic stuff and symlink config files

	sudo apt-add-repository ppa:fish-shell/release-2
	sudo apt-get update
	sudo apt-get install fish

	sudo apt-get -y install  git-core pidgin  python ruby ruby-dev g++ zsh screen curl wget gnome-terminal pypy fonts-inconsolata libxss1 rlwrap build-essential cmake python-dev 
	
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
    ln -s ~/.dot/config.fish ~/.config/fish/config.fish
    ln -s ~/.dot/fish_functions ~/.config/fish/functions
	mkdir ~/Dropbox
	mkdir ~/Dropbox/bin
	ln -s ~/Dropbox/bin ~/bin
    ln -s ~/.dot/gdbinit ~/.gdbinit

# Vim install
	cd $DOTPATH ; sudo ./vim-install.sh

# Nodejs install (broken)
#	cd $DOTPATH ; sudo ./nodejs-install.sh

# Rubygems and RVM install
	cd $DOTPATH ; sudo ./rubygems-install.sh

# Heroku install
	wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# texlive install (check version and shell)
	cd $DOTPATH ; sudo ./texlive-install.sh

# Dropbox install
	cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
	~/.dropbox-dist/dropboxd

