" my vimrc
" Bill Soistmann 
" http://bsoi.st
" <github@whsjr.soistmann.com>
""""""""""""""""""
" Essentials
""""""""""""""""""
filetype off
call pathogen#incubate()
filetype plugin indent on
set nocompatible
set modelines=0
set ttyfast

let mapleader = ","
let g:mapleader = ","

au FocusLost * :wa

set undofile
" set undodir=
set nobackup
"set nowritebackup
"set noswapfile

"""""""""""""""""
" Other Settings
"""""""""""""""""
" Key Mappings
source ~/.vimrc_maps
" UI Settings
source ~/.vimrc_ui

"""""""""""
" PLUGINS
"""""""""""
" NERD Tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>

" simplenote.vim
source ~/.simplenoterc
