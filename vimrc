" Pathogen
call pathogen#infect()
syntax on
filetype plugin indent on

" Set the font and window size
if has ('gui_running')
	set guifont=PT\ Mono\ 10
	set lines=50
	set columns=150
endif

" colorscheme slate
" colorscheme candycode
" colorscheme wuye
set background=dark
colorscheme solarized

" No vi compatibility
set nocompatible

set tabstop=4
set ignorecase
set smartcase

set wrap
set textwidth=80
set number

" nnoremap j gj
" nnoremap k gk

" Save when focus is lost
au FocusLost * :wa

" Custom key combos
nmap <silent> <F3> :NERDTreeToggle<CR>
