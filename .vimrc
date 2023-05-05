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


map w <Plug>CamelCaseMotion_w
map b <Plug>CamelCaseMotion_b
map e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

map w <Plug>CamelCaseMotion_w
map b <Plug>CamelCaseMotion_b
map e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

imap <silent> <S-Left> <C-o><Plug>CamelCaseMotion_b
imap <silent> <S-Right> <C-o><Plug>CamelCaseMotion_w
