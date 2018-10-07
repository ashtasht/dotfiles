source ~/.vim/plugged/vim-ipython/ftplugin/python/ipy.vim 

set nu
set autoindent
set foldmethod=indent
au BufEnter * :Qwerty!
let g:auto_save = 1

nnoremap <Tab> <c-w>
nnoremap ' :Files<c-m>

highlight Comment cterm=italic
highlight String cterm=italic

call plug#begin('~/.vim/plugged')
Plug 'google/vim-searchindex'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'
Plug 'nicwest/vim-workman'
Plug 'Yggdroot/indentLine'
Plug 'ivanov/vim-ipython'
Plug 'junegunn/fzf.vim'
Plug 'w0rp/ale'
call plug#end()

let g:indentLine_color_term = 239
let g:indentLine_char = '│'
