nnoremap " " <Nop>
let mapleader=" "

" Load the plugins
runtime macros/matchit.vim
execute pathogen#infect('bundle/{}')


" Styles and Colors
filetype indent plugin on
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Intentions
set autoindent smartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab

" Yank to system clipboard
set clipboard=autoselect

" set ve=insert
set directory=~/tmp
set showcmd

map <Leader>w :set wrap!<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>k :call Svndiff('prev')<CR>
map <Leader>j :call Svndiff('next')<CR>

set wildignore+=tmp/ios,tmp/android,app/assets/images,public/assets,vendor/assets,bin/classes

let g:svndiff_autoupdate=1
