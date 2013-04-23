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
" colorscheme solarized
" colorscheme adaryn
" colorscheme af
colorscheme xoria256-pluk
" colorscheme black_angus

" No vi compatibility
set nocompatible

set tabstop=4
set expandtab 
set ignorecase
set smartcase

set number
execute "set colorcolumn=" . join(range(81,335), ',')
hi ColorColumn guibg=#2d2d2d ctermbg=246

" nnoremap j gj
" nnoremap k gk

" Save when focus is lost
au FocusLost * :wa

" Custom key combos
nmap <silent> <F3> :NERDTreeToggle<CR>

func! WordProcessorMode() 
  " setlocal formatoptions=1 
  setlocal noexpandtab 
  map j gj 
  map k gk
  setlocal spell spelllang=en_us 
  set thesaurus+=/home/rsezov/.vim/thesaurus/mthesaur.txt
  set complete+=s
  " setlocal linebreak 
  set wrap
  set textwidth=80

endfu 
com! WP call WordProcessorMode()

" Back to code mode
func! CodeMode()
        setlocal expandtab
        set nowrap

endfu
com! CODE call CodeMode()
