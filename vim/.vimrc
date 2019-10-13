set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab autoindent nu
highlight LineNr ctermfg=darkgray

nnoremap <Tab> <C-w>
nnoremap <C-n> :NERDTreeFocus<CR>
map ` :NERDTreeToggle<CR>
" au BufEnter * :Qwerty!
call feedkeys(":Qwerty!\<CR>")
" highlight Comment cterm=italic
vmap <Tab> :s/.*/  \0/<CR>

" let g:indentLine_color_term = 239
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
set conceallevel=0
" let g:ale_completion_enabled = 1
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%severity%][%linter%]: %s'

"let g:limelight_conceal_ctermfg = 'gray'
"let g:limelight_priority = -1
"highlight EndOfBuffer ctermfg=black ctermbg=black
syntax on
