#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
#brew install homebrew/php/php56 --with-gmp

# Install font tools.
#brew tap bramstein/webfonttools
#brew install sfnt2woff
#brew install sfnt2woff-zopfli
#brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
#brew install aircrack-ng
#brew install bfg
#brew install binutils
#brew install binwalk
#brew install cifer
#brew install dex2jar
#brew install dns2tcp
#brew install fcrackzip
#brew install foremost
#brew install hashpump
#brew install hydra
#brew install john
#brew install knock
#brew install netpbm
#brew install nmap
#brew install pngcheck
#brew install socat
#brew install sqlmap
#brew install tcpflow
#brew install tcpreplay
#brew install tcptrace
#brew install ucspi-tcp # `tcpserver` etc.
#brew install xpdf
#brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install ghostscript
brew install lua
brew install lynx
#brew install p7zip
#brew install pigz
#brew install pv
#brew install rename
#brew install ssh-copy-id
brew install tree
brew install watch
#brew install vbindiff
#brew install zopfli

# png image optimization
brew install pngcrush

# development
brew install neovim
brew install postgresql
brew cask install virtualbox
brew cask install vagrant
brew cask install vagrant-manager
brew install tmux
brew install tmate # instant terminal sharing (via ssh and tmate.io)
brew cask install sublime-text
brew cask install atom
brew install redis
brew install couchdb
brew install neo4j

# chef
brew cask install chefdk

# ruby dev
brew install rbenv

# node dev
brew install nodenv
brew install yarn
brew install bower
brew install node@6
brew install graphviz

# log analysis?
#brew install goaccess

# java dev
brew cask install java

# clojure dev
brew install leiningen

# elixir dev
brew install elixir

# python dev
brew install python # python2 and pip2
brew linkapps python
brew install python3
brew linkapps python3

# selenium testing
brew install geckodriver
brew cask install firefox
brew install chromedriver

# eclipse
brew cask install eclipse-java

# f#
brew install mono

# R-lang
brew install r

# messaging
brew cask install slack

# media
brew install ffmpeg
brew install mpg123
brew cask install gimp
# inkskape
brew install caskformula/caskformula/inkscape

# AWS
brew install awscli

# utilities
brew install jq
brew install ag
brew install base64

# OTHER optional
#
# csound for lua chapter in 7 more lang
# brew tap csound/csound
# brew install csound

# Remove outdated versions from the cellar.
brew cleanup
brew install watchman

# RabbitMQ
brew install rabbitmq

# OpenCV
# assuming brew install python3
# pip3 install numpy scipy scikit-learn matplotlib mahotas
# pip3 install -U scikit-image
# --without-python (python2)
brew install opencv3 --with-contrib --with-python3 --without-python
# test with
# python3 -c 'import cv2'

# GNU debugger
brew install gdb

# Documentation
brew install dasht

# cool terminal stuff
brew install fortune cowsay lolcat

# exercism coding exercises
brew install exercism

# sc the spreadsheet calculator - http://www.linuxjournal.com/article/10699
brew install https://gist.github.com/geoff-codes/d8c16ada1de10e6387b3/raw/sc.rb
