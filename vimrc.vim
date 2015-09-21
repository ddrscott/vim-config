nnoremap " " <Nop>
let mapleader=" "

" Load the plugins
runtime macros/matchit.vim
execute pathogen#infect('bundle/{}')

autocmd FileType ruby set tags=.tags.ruby,tags
autocmd FileType javascript set tags=.tags.jsx,tags


"let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized'


let g:CommandTMaxHeight=10
let g:CommandTMinHeight=10
let g:CommandTFileScanner='find'
let g:CommandTCancelMap=['<ESC>', '<C-c>']

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

" allow unsaved buffers to be hidden
set hidden

set incsearch

" more natural window splits
set splitbelow
set splitright

" Intentions
set autoindent smartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set nowrap

" Line numbers
set number

" Yank to system clipboard
set clipboard=autoselect

" set ve=insert
set directory=~/tmp
set showcmd

map <Leader>w :set wrap!<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>k :call Svndiff('prev')<CR>
map <Leader>j :call Svndiff('next')<CR>

nnoremap <silent> <C-p> :bprevious<CR>
nnoremap <silent> <C-n> :bnext<CR>
"nnoremap <silent> <C-x> :bprevious<CR>:bdelete #<CR>
nnoremap <silent> <C-x> <C-o>:bdelete #<CR>

" search for current work and open quick change window
nnoremap <Leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

imap <C-Space> <C-P>
set wildmode=longest,list:longest

set wildignore+=tmp/ios,tmp/android,app/assets/images,public/assets,vendor/assets,bin/classes
set wildignore+=*/tmp/*,*.so,*.swp,*.zip                                                                                                                                                                                                                                                                                    
set wildignore+=tags
set wildignore+=*/tmp/*
set wildignore+=*/vendor/*

let g:svndiff_autoupdate=1


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
