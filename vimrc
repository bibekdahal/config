
" Indentation
" Use soft tab of 4 spaces.
"""""""""""""""""""""""""""""

set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on

" For makefile and conf files we need tabs instead of spaces
autocmd FileType make setlocal noexpandtab
autocmd BufNewFile,BufRead *.conf setlocal noexpandtab

" Syntax highlighting
"""""""""""""""""""""""
syntax on
color wombat256mod

" For django templates
au BufNewFile,BufRead *.html set filetype=htmldjango    " django
" For opencl programs
au BufNewFile,BufRead *.cl setf opencl     " opencl

" Word-wrapping and line numbers
""""""""""""""""""""""""""""""""""
set nowrap
set number

" Switch buffers using Tab and Shift+Tab
""""""""""""""""""""""""""""""""""""""""""
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>

" Highlight search using space
""""""""""""""""""""""""""""""""""""
set incsearch
:noremap <Space> :set hlsearch! hlsearch?<CR>

" ctrlp plugin
""""""""""""""""""""""""""""""""""""
set runtimepath^=~/.vim/bundle/ctrlp.vim

" File explorer
"""""""""""""""""""""""""""""""""""
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25


" Filename in status
""""""""""""""""""""""""""""""""""
set ls=2

" Persistent undo
""""""""""""""""""""""""""""""""""
" Don't forget to mkdir ~/.vim/undo
set undofile
set undodir=$HOME/.vim/undo

set undolevels=1000
set undoreload=10000

" Move lines/blocks up/down
""""""""""""""""""""""""""""""""""
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv
