# Ruby-built Vim for command-t etc.
hg clone https://vim.googlecode.com/hg/ /home/vagrant/vim
cd /home/vagrant/vim
./configure --enable-pythoninterp --enable-rubyinterp
make
sudo make install

cd /home/vagrant

# Oh-my-zsh and misc. setup
git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh

cd /home/vagrant
rm *.gz chruby* ruby* postinstall.sh
touch .secrets

mkdir bin
curl http://hub.github.com/standalone -sLo /home/vagrant/bin/hub && chmod +x /home/vagrant/bin/hub

chsh -s /bin/zsh vagrant

# Dotfiles
cd /home/vagrant
git clone https://github.com/imkmf/dotfiles.git /home/vagrant/.dotfiles
HOME=/home/vagrant /home/vagrant/.dotfiles/go-time

chown -R vagrant:staff /home/vagrant

git clone https://github.com/gmarik/vundle.git /home/vagrant/.vim/bundle/vundle
