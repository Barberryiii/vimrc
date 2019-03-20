"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set guifont=Courier\ New\ 13,Consolas\ 12,Courier\ 12,Dejavu\ Sans\ Mono\ 12,Liberation\ Mono\ 14

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorschme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme  molokai "solarized
set t_Co=256

hi Normal ctermbg=234
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"use mouse
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set line number
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"reset vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>rr :source ~/.vimrc<cr> 
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
let g:tagbar_left = 0
let g:tagbar_width = 23
let g:tagbar_autofocus =1 
let g:tagbar_sort = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"neocomplete
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tabular
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <c--> :'<,'>Tabularize /--<cr>
vnoremap <c-=> :'<,'>Tabularize /=<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"indentLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:indentLine_noConcealCursor = 1
let g:indentLine_color_term = 237
let g:indentLine_char = '|'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ag_working_path_mode="r"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " Plugins will be downloaded under the specified directory.
set nofixendofline  
set ff=unix
call plug#begin('~/.vim_runtime/my_plugins')
"Declare the list of plugins.
Plug 'ap/vim-buftabline'
Plug 'majutsushi/tagbar'
Plug 'Shougo/neocomplete.vim'
Plug 'godlygeek/tabular'
Plug 'Yggdroot/indentLine'
Plug 'rking/ag.vim'
" List ends here. Plugins become visible to Vim after this callt.
call plug#end()
