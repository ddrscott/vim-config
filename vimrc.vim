nnoremap " " <Nop>
let mapleader=" "

" Load the plugins
execute pathogen#infect('bundle/{}')
runtime macros/matchit.vim


" Styles and Colors
filetype indent plugin on
syntax enable
if has('gui_running')
  set background=light
else
  set background=dark
endif
let g:solarized_termcolors=256
colorscheme solarized

" Intentions
set shiftwidth=2
set softtabstop=2
set autoindent
" set ve=insert
set directory=~/tmp
set showcmd

map <Leader>w :set wrap!<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>k :call Svndiff('prev')<CR>
map <Leader>j :call Svndiff('next')<CR>

set wildignore+=tmp/ios,tmp/android,app/assets/images,public/assets,vendor/assets

let g:svndiff_autoupdate=1
