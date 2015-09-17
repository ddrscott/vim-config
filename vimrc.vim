nnoremap " " <Nop>
let mapleader=" "

" Load the plugins
runtime macros/matchit.vim
execute pathogen#infect('bundle/{}')


" Styles and Colors
filetype on
filetype indent on
filetype plugin on

syntax enable
set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized

set mouse=a
set ttymouse=xterm2

" Intentions
set autoindent smartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set nowrap

" Yank to system clipboard
set clipboard=autoselect

" set ve=insert
set directory=~/tmp
set showcmd

map <Leader>w :set wrap!<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>k :call Svndiff('prev')<CR>
map <Leader>j :call Svndiff('next')<CR>

imap <C-Space> <C-P>
set wildmode=longest,list:longest

set wildignore+=tmp/ios,tmp/android,app/assets/images,public/assets,vendor/assets,bin/classes

let g:svndiff_autoupdate=1
