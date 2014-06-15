# Rubygems and RVM install

cd $HOME
curl -L https://get.rvm.io | bash
wget http://rubyforge.org/frs/download.php/76729/rubygems-1.8.25.tgz
tar -xvzf rubygems-1.8.25.tgz 
cd rubygems-1.8.25/
sudo ruby setup.rb
cd ..
rm -R rubygems*
