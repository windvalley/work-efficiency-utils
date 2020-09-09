#!/bin/bash



# brew install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# update brew
brew update

# app list that installed by brew
brew list

# brew clean old apps installer
brew clean

# manage services
brew services list

#brew install coreutils
#echo 'export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"' >> ~/.zshrc

brew install wget

brew install tree

# for iterm2
brew install lszrz

# ag: like grep and ack, but faster
brew install the_silver_searcher

# for example: echo '{"foo": 0}'|jq
# just like: python -m json.tool
brew install jq

# a better top
brew install htop

# multi-theading downloader
brew install axel

# code statics
brew install cloc

# shell script check
brew install shellcheck

# tldr: Too Long Don't Read, give the common usage examples of a command.
brew install tldr

# disk usage
brew install ncdu

# macbook system info
brew install screenFetch

# docker monitor
brew install ctop

# process tree
brew install pstree

# bash-completion
brew install bash-completion

# rainbow character
brew install lolcat

# for Go pprof
brew install graphviz

# mongodb
brew tap mongodb/brew
brew install mongodb-community
