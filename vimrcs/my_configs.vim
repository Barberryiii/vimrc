"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guifont=Courier\ New\ 13,Consolas\ 12,Courier\ 12,Dejavu\ Sans\ Mono\ 12,Liberation\ Mono\ 14

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorschme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme  molokai "solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"use mouse
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set line number
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set relativenumber

""""""""""""""""""""""""""""""
"buftabline
""""""""""""""""""""""""""""""
set hidden
nnoremap <c-j> :bnext<cr>
nnoremap <c-k> :bprev<cr>

""""""""""""""""""""""""""""""
"tagbar
""""""""""""""""""""""""""""""
autocmd vimenter * TagbarToggle 
map <silent> <leader>b :TagbarToggle<cr>
 let g:tagbar_ctags_bin = 'ctags'
 let g:tagbar_left = 1
 let g:tagbar_width = 30
 let g:tagbar_autofocus =1 
 let g:tagbar_sort = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim_runtime/my_plugins')
"Declare the list of plugins.
Plug 'ap/vim-buftabline'
Plug 'majutsushi/tagbar'
Plug 'Shougo/neocomplete.vim.git'
" List ends here. Plugins become visible to Vim after this callt.
call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"neocomplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1
