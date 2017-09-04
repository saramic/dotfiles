# update
sudo yum -y update

# basics for development
sudo yum -y install readline-devel git make zlib-devel sqlite-devel.x86_64 gcc g++ svn

# ruby native extension compilation
sudo yum -y install ruby-devel rubygems compass

# tmux
sudo yum -y install tmux

# tree
sudo yum -y install tree

# ruby 2.3
sudo yum -y remove ruby20
sudo yum -y install ruby23 ruby23-devel rubygems23
