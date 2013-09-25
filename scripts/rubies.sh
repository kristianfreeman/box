# Chruby
sudo su -u vagrant

cd /home/vagrant
wget -O chruby-0.3.7.tar.gz https://github.com/postmodern/chruby/archive/v0.3.7.tar.gz
tar -xzvf chruby-0.3.7.tar.gz
cd chruby-0.3.7
sudo make install

cd /home/vagrant
wget -O ruby-install-0.3.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.3.0.tar.gz
tar -xzvf ruby-install-0.3.0.tar.gz
cd ruby-install-0.3.0/
sudo make install

ruby-install ruby
