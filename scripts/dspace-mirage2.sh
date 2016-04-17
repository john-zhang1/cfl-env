#!/bin/bash


curl https://raw.githubusercontent.com/creationix/nvm/v0.5.1/install.sh | sh
source ~/.bash_profile

# Install node, bower, and grunt
nvm install 0.10.31
nvm alias default 0.10.31
npm install -g bower
npm install -g grunt && npm install -g grunt-cli

# the package is signed, so we need to import a key.
gpg2 --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.profile
echo "source ~/.profile" >> ~/.bash_profile
gem install sass -v 3.3.14
gem install compass -v 1.0.1
