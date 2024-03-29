" settings
syntax on
filetype plugin indent on

set colorcolumn=80
" set textwidth=80
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set number
set colorcolumn=80
set clipboard=unnamed " yank to system clipboard

" set mappings
nmap <space> zz
nmap n nzz
nmap N Nzz

" set autocommands
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
