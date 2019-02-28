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
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprev<CR>

""""""""""""""""""""""""""""""
"tagbar
""""""""""""""""""""""""""""""
autocmd vimenter * TagbarToggle 
map <silent> <leader>b :TagbarToggle<CR>
 let g:tagbar_ctags_bin = 'ctags'
 let g:tagbar_left = 1
 let g:tagbar_width = 30
 let g:tagbar_autofocus =1 
 let g:tagbar_sort = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim_runtime/my_plugins')
"Declare the list of plugins.
Plug 'ap/vim-buftabline'
Plug 'majutsushi/tagbar'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()"
