"nessciary things to have
execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
colorscheme hybrid

" copy and paste
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

"Vim-Airline
let g:airlne_powerline_fonts = 1
set laststatus=2
"let g:airline#extensions#tabline#enabled = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_theme = 'lucius'

let g:hybrid_custom_term_colors = 1
syntax on

highlight Pmenu ctermfg=15 ctermbg=0
highlight PmenuSel ctermfg=4 ctermbg=15

set relativenumber
set number

set tabstop=2
set softtabstop=0 noexpandtab
set shiftwidth=2

set list lcs=tab:\|\ 
hi SpecialKey ctermfg=238

set breakindent
set autoindent

" Ctrl S

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>

