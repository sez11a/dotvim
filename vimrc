call pathogen#infect()
syntax on
filetype plugin indent on

if has ('gui_running')
	set guifont=PT\ Mono\ 10
endif

colorscheme slate
set nocompatible

set ignorecase
set smartcase

set wrap
set textwidth=80
set number

nnoremap j gj
nnoremap k gk
au FocusLost * :wa

