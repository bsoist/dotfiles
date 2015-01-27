" my vimrc
" Bill Soistmann 
" http://bsoi.st
" <github@whsjr.soistmann.com>
" tips from 
" Steve Losh
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" and
" Amir Salihefendic
" http://amix.dk/vim/vimrc.html

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
set undodir=~/vim.un
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

" force md as markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
