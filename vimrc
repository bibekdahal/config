call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'


call plug#end()


" Leader and leader mapping
let mapleader=","
nnoremap <leader>p :CtrlPBuffer<cr>
nmap <silent> <leader>N <Plug>(ale_previous_wrap)
nmap <silent> <leader>n <Plug>(ale_next_wrap)

" Some basic config
set number
set nowrap
set cursorline
set wildmenu
set hidden
set backspace=indent,eol,start

" Color theme apprentice
colorscheme apprentice
syntax on
" Disable background color erase
set t_ut=


" ALE config
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 1
let g:ale_lint_delay = 300 " ms
let g:ale_sign_column_always = 1
let g:ale_linters = {
            \'javascript': ['eslint'],
            \}
let g:ale_javascript_eslint_use_global = 1

" vim-jsx: no .jsx extension required
let g:jsx_ext_required = 0

" Omnicomplete
inoremap <C-@> <c-x><c-o>


" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on


" Switching buffers
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>


" Incremental search and search highlighting
set incsearch
nnoremap <leader><space> :set hlsearch! hlsearch?<cr>


" Folding
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
nnoremap <space> za


" Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25


" Moving text/block up down
nnoremap <c-j> :m .+1<cr>==
nnoremap <c-k> :m .-2<cr>==
inoremap <c-j> <Esc>:m .+1<cr>==gi
inoremap <c-k> <Esc>:m .-2<cr>==gi
vnoremap <c-j> :m '>+1<cr>gv=gv
vnoremap <c-k> :m '<-2<cr>gv=gv


" Sudo save
cmap w!! w !sudo tee % >/dev/null
