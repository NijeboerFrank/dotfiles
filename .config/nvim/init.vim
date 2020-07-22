" -----------------------------------
" ---      Standard Settings      ---
" -----------------------------------

" Set the leader key
nnoremap <space> <nop>
let mapleader = "\<space>"


" Relative Numbers
set number
set relativenumber
" Toggle for relative numbers
nnoremap <silent <leader>nb :set relativenumber!<CR>

" Map jk to exit insert mode
inoremap jk <esc>
inoremap <esc> <nop>

" Map <S-j> and <S-k> to move tabs
nnoremap <S-j> <nop> 
nnoremap <S-j> gT
nnoremap <S-k> gt

" Yank to end of line
nnoremap Y y$

" Delete entire line
nnoremap D dd

" Searching configuration
set incsearch
set ignorecase
set smartcase
" Keep search results at center
nnoremap n nzz
nnoremap N Nzz
" Press <leader><enter> to remove highlights
nnoremap <silent> <leader><CR> :noh<CR>

" Save a file with sudo 
cnoremap w!! w !sudo tee % >/dev/null

" Share clipboard with the OS
set clipboard=unnamedplus



