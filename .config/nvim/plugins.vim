" Auto-install vim-plug on different systems if it does not exist. For
" Windows, only Windows 10 with curl installed are supported (after Windows 10
" build 17063, source:
" https://devblogs.microsoft.com/commandline/tar-and-curl-come-to-windows/).
" The following script to install vim-plug is adapted from vim-plug
" wiki: https://github.com/junegunn/vim-plug/wiki/tips#tips
let g:VIM_PLUG_PATH = expand(g:nvim_config_root . '/autoload/plug.vim')
if executable('curl')
    if empty(glob(g:VIM_PLUG_PATH))
        echomsg 'Installing Vim-plug on your system'
        silent execute '!curl -fLo ' . g:VIM_PLUG_PATH . ' --create-dirs '
            \ . 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

        augroup plug_init
            autocmd!
            autocmd VimEnter * PlugInstall --sync | quit |source $MYVIMRC
        augroup END
    endif
else
    echoerr 'You have to install curl to install vim-plug, or install '
            \ . 'vim-plug by yourself.'
    finish
endif

" Set up directory to install the plugins based on whether you are installing
" neovim system wide or for personal use.
if g:nvim_system_wide
    let g:PLUGIN_HOME="/usr/local/share/nvim/site"
else
    let g:PLUGIN_HOME=expand(stdpath('data') . '/plugged')
endif
"}}

"{{ Autocompletion related plugins
call plug#begin(g:PLUGIN_HOME)

" {{ Fuzzy searching plugins
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()



" {{ Fuzzy searching settings

" Remap ; to fzf fuzzy search
map ; :Files<CR>


