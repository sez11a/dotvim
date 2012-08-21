" Pathogen
call pathogen#infect()
syntax on
filetype plugin indent on

" Set the font
if has ('gui_running')
	set guifont=PT\ Mono\ 10
endif

colorscheme slate

" No vi compatibility
set nocompatible

set ignorecase
set smartcase

set wrap
set textwidth=80
set number

" nnoremap j gj
" nnoremap k gk

" Save when focus is lost
au FocusLost * :wa

