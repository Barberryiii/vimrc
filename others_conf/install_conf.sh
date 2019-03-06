sh ~/.vim_runtime/install_awesome_vimrc.sh
cd ~
mkdir Plugin/
cd ~/PLugin
git clone https://github.com/vim/vim.git
echo "vim is installed"
vim -c "PlugInstall" -c "q"
echo "neocomplete,tagbar,vim-buftabline is installed"
git clone https://github.com/tmux/tmux.git
cd ~/Plugin/tmux
sh autogen.sh
./configure && make
echo "tmux is installed"
git clone --recursive https://github.com/tony/tmux-config.git ~/.tmux
ln -s ~/.vimrc_runtime/other_conf/.tmux_conf ~/.tmux.conf
echo "tmux.conf is installed"
cd ~/Plugin
git clone https://github.com/zsh-users/zsh.git
echo "zsh is installed"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "oh-my-zsh is installed"
cp ~/.vim_runtime/other_conf/zys.zsh-theme ~/.oh-my-zsh/themes/
echo "zys theme is copy"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "autosuggestions is installed"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "highlighting is installed"
ln -s ~/.vim_runtime/other_conf/.zshrc ~/.zshrc
echo "zshrc is installed"
git clone https://github.com/wting/autojump.git
cd ~/Plugin/autojump
python install.py
echo "autojump is installed"





