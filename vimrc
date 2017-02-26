
" Indentation
" Use soft tab of 4 spaces.
"""""""""""""""""""""""""""""
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" For makefile and conf files we need tabs instead of spaces
autocmd FileType make setlocal noexpandtab
autocmd BufNewFile,BufRead *.conf setlocal noexpandtab

" Syntax highlighting
"""""""""""""""""""""""
syntax on
color desert

" For django templates
au BufNewFile,BufRead *.html set filetype=htmldjango    " django
" For opencl programs
au BufNewFile,BufRead *.cl setf opencl     " opencl

" Word-wrapping and line numbers
""""""""""""""""""""""""""""""""""
set nowrap
set number

" Current directory as directory of the file for gvim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('gui_running')
    set autochdir
endif

" Switch buffers using Tab and Shift+Tab
""""""""""""""""""""""""""""""""""""""""""
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>

" Highlight search using space
""""""""""""""""""""""""""""""""""""
set incsearch
:noremap <Space> :set hlsearch! hlsearch?<CR>
