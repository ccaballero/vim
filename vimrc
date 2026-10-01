" general options
"filetype indent plugin on

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

" nerdtree
noremap  <F2> :NERDTreeToggle<cr>
inoremap <F2> <esc>:NERDTreeToggle<cr>

let NERDTreeShowHidden=1

augroup ps_nerdtree
    au!

    au Filetype nerdtree setlocal nolist
    au Filetype nerdtree nnoremap <buffer> H :vertical resize -10<cr>
    au Filetype nerdtree nnoremap <buffer> L :vertical resize +10<cr>
    au Filetype nerdtree nnoremap <buffer> K :q<cr>
augroup END

let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['.vim$','\~$','.*\.aux$','.*\.pdf$','.*\.bak$']

let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDChristmasTree=1
let NERDTreeChDirMode=2
let NERDTreeMapJumpFirstChild='gK'

" pathogen
call pathogen#infect()

" vim gitgutter
let g:gitgutter_sign_added='▸'
let g:gitgutter_sign_removed='◂'
let g:gitgutter_sign_modified='◆'
set signcolumn=yes

" vim ale
let g:ale_linter={
\    'javascript':['eslint'],
\}
let g:ale_fixers={
\    '*':['remove_trailing_lines','trim_whitespace'],
\    'javascript':['eslint'],
\}
noremap  <F7> :ALEPrevious<cr>
noremap  <F8> :ALENext<cr>

" vim minimap
let g:minimap_show='<Leader>mm'
let g:minimap_close='<Leader>mc'
let g:minimap_update='<Leader>mu'
let g:minimap_toggle='<Leader>mt'
let g:minimap_highlight='Visual'
let g:minimap_width=18

nnoremap <Leader>mm :Minimap<CR>
nnoremap <Leader>mc :MinimapClose<CR>

" open terminal
function! OpenTerminalInCurrentDir() abort
    let l:current_dir = expand('%:p:h')

    if isdirectory(l:current_dir)
        let l:old_dir = getcwd()

        execute 'lcd ' . fnameescape(l:current_dir)

        belowright terminal ++rows=12

        execute 'lcd ' . fnameescape(l:old_dir)
    else
        belowright terminal ++rows=12
    endif
endfunction

nnoremap <silent> <C-t> :call OpenTerminalInCurrentDir()<CR>

