syntax on

colo nord

inoremap jk <ESC>
let mapleader = "'"
noremap <Leader>s :set spell!
syntax on
filetype on
set number
set rnu
set noswapfile
set hlsearch
set ignorecase
set incsearch
set spelllang=en_us

imap <silent> <S-Left> <C-o><Plug>CamelCaseMotion_b
imap <silent> <S-Right> <C-o><Plug>CamelCaseMotion_w
