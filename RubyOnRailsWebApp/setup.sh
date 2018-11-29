echo "This script sets up the ruby on rails environment"
echo "As based on 11/28/2018:"
echo "https://gorails.com/setup/osx/10.14-mojave"

brew install rbenv ruby-build

# Add rbenv to bash so that it loads every time you open a terminal
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby
rbenv install 2.5.3
rbenv global 2.5.3
ruby -v

gem install rails -v 5.2.1

rbenv rehash

rails -v
# Rails 5.2.1

brew install sqlite3

brew install mysql

brew install postgresql
