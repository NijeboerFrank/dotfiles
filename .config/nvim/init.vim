""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"        _   _       _                  _____             __ _               "
"       | \ | |     (_)                / ____|           / _(_)              "
"       |  \| |_   ___ _ __ ___       | |     ___  _ __ | |_ _  __ _         "
"       | . ` \ \ / / | '_ ` _ \      | |    / _ \| '_ \|  _| |/ _` |        "
"       | |\  |\ V /| | | | | | |     | |___| (_) | | | | | | | (_| |        "
"       |_| \_| \_/ |_|_| |_| |_|      \_____\___/|_| |_|_| |_|\__, |        "
"                                                               __/ |        "
"                                                              |___/         "
"                                                                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The above ASCII art is generated using service provided in this webpage:
" https://www.kammerl.de/ascii/AsciiSignature.php. 

" Inspired by https://github.com/jdhao/nvim-config/blob/master/init.vim


"{ Main configurations
let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')

" If you are using Neovim on Linux system and want to set it up system wide
" for users, set g:nvim_system_wide to 1. If you only want to use it for
" personal need, set this variable to 0.
let g:nvim_system_wide=0

" Do not set this varialbe if the system is not *nix
if g:nvim_system_wide
    if !g:is_linux
        let g:nvim_system_wide = 0
    endif
endif

" Source other configuration files
let g:nvim_config_root = expand('<sfile>:p:h')

let g:config_file_list = ['variables.vim',
    \ 'options.vim',
    \ 'autocommands.vim',
    \ 'mappings.vim',
    \ 'plugins.vim',
    \ 'ui.vim'
    \ ]
for s:fname in g:config_file_list
   execute 'source ' . g:nvim_config_root . '/' . s:fname
endfor

