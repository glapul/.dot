
# Texlive installation (assumes using fish) (needs testing)

wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar -xvzf install-tl-unx.tar.gz 
cd install-tl*
sudo ./install-tl
cd ..
echo "set PATH $PATH $HOME/bin:/usr/local/texlive/2013/bin/x86_64-linux/" > $HOME/.config/fish/config.fish

#clean
sudo rm -R install-tl
