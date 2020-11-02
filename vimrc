" general options
filetype indent plugin on

set nocompatible
set number
set encoding=utf-8
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮
set hidden
set showcmd
set ruler
set laststatus=2
set confirm
set visualbell
set magic

set viminfo='100,f0,\"100,:100,/100,h,%
set nowrap

" colors
syntax on
set t_Co=256
colorscheme jacobian

" tabbing, spaces, wrapping
set wrap
set textwidth=80
set formatoptions=cqvn1j
set colorcolumn=+1
set expandtab
set shiftwidth=4
set softtabstop=4

" folding
set nofoldenable

" search
set ignorecase
set smartcase
set hlsearch
set incsearch
set nowrapscan

" movements
set scrolloff=3

" completion
set complete=.,w,b,u

" backups
set backup
set noswapfile

set undodir=~/.vim/tmp/undo/      " undo files
set backupdir=~/.vim/tmp/backup/  " backups

" airline
let g:airline_powerline_fonts=1
let g:airline_theme='powerlineish'
let g:airline_section_b='%{strftime("%c")}%'
let g:airline#extensions#tabline#enabled=1

" spell
set spellfile=~/.vim/custom.dictionary.utf-8.add
setlocal spell spelllang=es
set nospell

" navigation
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

" nerdtree
noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

augroup ps_nerdtree
    au!

    au Filetype nerdtree setlocal nolist
    au Filetype nerdtree nnoremap <buffer> H :vertical resize -10<cr>
    au Filetype nerdtree nnoremap <buffer> L :vertical resize +10<cr>
    au Filetype nerdtree nnoremap <buffer> K :q<cr>
augroup END

let NERDTreeHighlightCursorline = 1
let NERDTreeIgnore = ['.vim$', '\~$', '.*\.log$', '.*\.aux$', '.*\.pdf$', '.*\.bak$']

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'

" pathogen
call pathogen#infect()

" vim markdown
let g:vim_markdown_folding_disabled=1

" vim gitgutter
let g:gitgutter_sign_added='▸'
let g:gitgutter_sign_removed='◂'
let g:gitgutter_sign_modified='◆'
set signcolumn=yes

" vim syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_eslint_exec = 'eslint_d'
"let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }

"noremap <F5> :labove<cr>
"noremap <F6> :lnext<cr>

" vim minimap
"let g:minimap_show='<leader>ms'
"let g:minimap_update='<leader>mu'
"let g:minimap_close='<leader>gc'
"let g:minimap_toggle='<leader>gc'

