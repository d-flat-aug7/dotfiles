let g:cache_vim = g:cache_home . '/vim'

let g:dein_dir = g:cache_vim   . '/dein'
let g:nvim_dir = g:config_home . '/vim'

let g:dein_path = g:dein_dir . '/repos/github.com/Shougo/dein.vim'
let g:toml_path = g:nvim_dir . '/dein.toml'

if !isdirectory(g:dein_path)
    echo 'Installing dein.vim...'
    call system('git clone https://github.com/Shougo/dein.vim ' . g:dein_path)
endif

let &runtimepath = g:dein_path . ',' . &runtimepath

if dein#load_state(g:dein_dir)
    call dein#begin(g:dein_dir)
    call dein#load_toml(g:toml_path)
    call dein#end()
    call dein#save_state()
endif

if has('vim_starting') && dein#check_install() | call dein#install() | endif

syntax enable
filetype plugin indent on