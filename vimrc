call plug#begin('~/.vim/plugged')

Plug 'ctrlpvim/ctrlp.vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tomasiser/vim-code-dark'
Plug 'w0rp/ale'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'jremmen/vim-ripgrep'
Plug 'Yggdroot/indentLine'


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
set mouse=a

" Color theme
colorscheme codedark
" colorscheme onehalfdark
" colorscheme onehalflight
" colorscheme apprentice
" colorscheme flattened_light
syntax on
" Disable background color erase
set t_ut=

" CtrlP
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
let g:ctrlp_use_caching = 0

" ALE config
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 0
let g:ale_lint_on_text_changed = 1
let g:ale_lint_delay = 300 " ms
let g:ale_sign_column_always = 1
let g:ale_linters = {
            \'javascript': ['eslint'],
            \'cpp': ['clang', 'gcc', 'clangcheck'],
            \'python': ['flake8'],
            \}
let g:ale_fixers = { 'scss': ['stylelint'], 'javascript': ['eslint'] }
" let g:ale_javascript_eslint_use_global = 1
let g:ale_cpp_clang_options = '-std=c++17 -Wall -I include -I tmp'
let g:ale_cpp_gcc_options = '-std=c++17 -Wall -I include -I tmp'
let g:ale_cpp_clangcheck_options = '-- -std=c++17 -Wall -I include -I tmp -x c++'


" Omnicomplete
inoremap <C-@> <c-x><c-o>


" Indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

filetype plugin indent on

" au FileType tf setlocal expandtab tabstop=2 shiftwidth=2
" au FileType cpp setlocal expandtab tabstop=2 shiftwidth=2
" au BufRead,BufEnter /home/bibek/projects/helix/*.js set tabstop=2 softtabstop=2 shiftwidth=2
" au BufRead,BufEnter /home/bibek/projects/helix/*.vue set tabstop=2 softtabstop=2 shiftwidth=2
" au BufRead,BufEnter /home/bibek/projects/zendesk/*.hbs set tabstop=2 softtabstop=2 shiftwidth=2
" au BufRead,BufEnter /home/bibek/projects/zendesk/*.hbs set tabstop=2 softtabstop=2 shiftwidth=2


" Disable auto indent
:nnoremap <F8> :setl noai nocin nosi inde=<CR>


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


" Directory for swap files
set directory=~/.vim/swapfiles/    " Make sure directory exists
