call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-syntastic/syntastic'

call plug#end()


let mapleader=","
nnoremap <leader>p :CtrlPBuffer<cr>


colorscheme apprentice
syntax on
set t_ut=

set statusline=%t
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=%l:%c

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_scss_checkers=[]

let g:jsx_ext_required = 0

inoremap <C-@> <c-x><c-o>


set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on


set number
set nowrap
set cursorline
set wildmenu
set hidden


map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>


set incsearch
nnoremap <leader><space> :set hlsearch! hlsearch?<cr>


set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za


let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25


nnoremap <c-j> :m .+1<cr>==
nnoremap <c-k> :m .-2<cr>==
inoremap <c-j> <Esc>:m .+1<cr>==gi
inoremap <c-k> <Esc>:m .-2<cr>==gi
vnoremap <c-j> :m '>+1<cr>gv=gv
vnoremap <c-k> :m '<-2<cr>gv=gv


