
# Texlive installation (assumes using zsh)

wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar -xvzf install-tl-unx.tar.gz 
cd install-tl*
sudo ./install-tl
cd ..
echo "PATH=$HOME/bin:/usr/local/texlive/2013/bin/x86_64-linux/:$PATH" > $HOME/.zshrc.local

#clean
sudo rm -R install-tl
