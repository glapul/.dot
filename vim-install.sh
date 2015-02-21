# This installs current vim version

# Symlink things
	ln -s ~/.dot/vim/vimrc ~/.vimrc
	ln -s ~/.dot/vim ~/.vim

# install prerequisites
	sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
	libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
	libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev mercurial \
    libclang-dev

# remove old vim if installed
	sudo apt-get remove vim vim-runtime gvim
	sudo apt-get remove vim-tiny vim-common vim-gui-common

# download and install
	cd ~
	hg clone https://code.google.com/p/vim/
	cd vim
	./configure --with-features=huge \
		    --enable-multibyte \
		    --enable-rubyinterp \
		    --enable-pythoninterp \
		    --with-python-config-dir=/usr/lib/python2.7/config \
		    --enable-perlinterp \
		    --enable-luainterp \
		    --enable-gui=gtk2 --enable-cscope --prefix=/usr
	make VIMRUNTIMEDIR=/usr/share/vim/vim74
	sudo make install

# update-alternatives
	sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
	sudo update-alternatives --set editor /usr/bin/vim
	sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
	sudo update-alternatives --set vi /usr/bin/vim

# Vundle installation
#	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Print message
	echo "Remember to recompile YCM and install bundles"
	echo "cd ~/.vim/bundle/YouCompleteMe ; sudo ./install.sh --clang-completer"

# clean
	cd ..
	sudo rm -R vim
