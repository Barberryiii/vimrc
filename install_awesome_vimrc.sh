#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/vimrcs/my_configs.vim
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim_runtime/my_plugins')
"Declare the list of plugins.
Plug 'ap/vim-buftabline'
Plug 'majutsushi/tagbar'
Plug 'Shougo/neocomplete.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"

