" -----------------------------------
" ---      Standard Settings      ---
" -----------------------------------

" Set the leader key
nnoremap <space> <nop>
let mapleader = "\<space>"

" Share clipboard with the OS
" On Arch you need to install xclip for 
" this to work
set clipboard=unnamedplus

" Relative Numbers
set number
set relativenumber
" Toggle for relative numbers
nnoremap <silent <leader>nb :set relativenumber!<CR>

" Map jk to exit insert mode
inoremap jk <esc>
inoremap <esc> <nop>

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

" Mouse support
set mouse=a

" Unset wrapping
set wrap!

" Save a file with sudo 
cnoremap w!! w !sudo tee % >/dev/null


" Kivy Settings
augroup kivy
  au!
  autocmd BufNewFile,BufRead *.kv setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
