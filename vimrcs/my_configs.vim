"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"font
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set guifont=Courier\ New\ 13,Consolas\ 12,Courier\ 12,Dejavu\ Sans\ Mono\ 12,Liberation\ Mono\ 14

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"colorschme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
colorscheme  molokai "solarized set t_Co=256

hi Normal ctermbg=234
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"use mouse
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=a
map <leader>w :set ff=unix<cr>:w<cr>:e<cr>
map nj 10j
map mk 10k
set fileformat=unix
autocmd BufWritePre *.lua :set ff=unix
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
"nerdtree-git-plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ 
}
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
