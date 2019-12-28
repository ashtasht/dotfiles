" 2 spaces instead of a tab
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
" Automatic tabs
set autoindent
" Line numbers
set nu
" Swtich panels easier
nnoremap <Tab> <C-w>
" Hit ` to open Nerdtree
map ` :NERDTreeToggle<CR>
" Convert Workman layout to Qwerty
call feedkeys(":Qwerty!\<CR>")
" Press tab on visual mode in order to indent
vmap <Tab> :s/.*/  \0/<CR>

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
set conceallevel=0

syntax on
colorscheme shblah
