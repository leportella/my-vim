" Load Pathogen
execute pathogen#infect()

" set background type
set background=dark

" color syntax
syn on
set encoding=UTF-8

" Find ( pairs
set showmatch

" Airline theme
set laststatus=2
set linespace=0
let g:airline_theme='dark'
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:gitgutter_max_signs = 10000

" force vim to use 256 colors
set term=screen-256color

" tab config
set ts=4
set expandtab
set softtabstop=4

" 4 spaces for identing
set shiftwidth=4

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" Allow tabs on selected lines
vmap <Tab> >gv
vmap <S-Tab> <gv

" Add plugin CtrlP vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Make Ctrl-P ignore some files...
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', '.pyc']

" Automatically identify files
filetype plugin on

" Remove unnecessary spaces (trailing spaces) on the right area of text
autocmd FileType python,javascript,ruby,c,cpp,java,php autocmd BufWritePre <buffer> :%s/\s\+$//e

" column color for warning
set colorcolumn=80
hi ColorColumn ctermbg=235
 
" Add line line number
set number
highlight LineNr ctermfg=grey

" Highlight current line
set cursorline
hi CursorLine ctermbg=235
