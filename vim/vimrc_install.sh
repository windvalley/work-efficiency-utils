#!/usr/bin/env bash
# vimrc_install.sh
#


VIMRC_URL="https://raw.githubusercontent.com/windvalley/work-efficiency-utils/master/vim/vimrc"
PLUG_VIM_URL="https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"


cp ~/.vimrc ~/.vimrc."$(date +%F_%T)"
mv ~/.vim ~/.vim."$(date +%F_%T)"

if ! curl -sfo ~/.vimrc $VIMRC_URL; then
    echo "vimrc download failed."
    exit 1
fi

if ! curl -sfLo ~/.vim/autoload/plug.vim --create-dirs $PLUG_VIM_URL; then
    echo "plug.vim install failed."
    exit 1
fi

vim +PlugInstall +qa <<EOF

EOF

cd ~/.vim/plugged/YouCompleteMe/ || exit 1
/usr/local/python3/bin/python3 install.py --go-completer || exit 1

echo 'export EDITOR=vim' >> ~/.zshrc

