#!/data/data/com.termux/files/usr/bin/bash

echo "## Create .termux directory"
mkdir -p $HOME/.termux
echo
echo "## Re-set termux navigation"
cp termux.properties $HOME/.termux/termux.properties
echo
echo "## Set background to purple"
cp colors.properties $HOME/.termux/colors.properties
echo
echo "## Reload"
termux-reload-settings
echo
echo "## Create .vimrc"
touch $HOME/.vimrc
echo 
echo "## Create .config/nvim directory"
mkdir -p $HOME/.config/nvim/
echo
echo "## Copy init.vim to .config/nvim/-here-"
cp init.vim $HOME/.config/nvim/init.vim
echo
echo "=> Create Symbolic Link between '.vimrc' ~ '.config/nvim/init.vim'"
ln -d $HOME/.vimrc $HOME/.config/nvim/init.vim
echo
echo "Finished!"
echo
echo "Now, open your nvim, then install all the plugins by typing :PlugInstall"
