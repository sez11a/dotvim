" Pathogen
execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

" Set the font and window size
if has ('gui_running')
    set guifont=Anonymous\ Pro\ for\ Powerline\ 12
	set lines=50
	set columns=100
endif

set background=dark
colorscheme xoria256

" No vi compatibility
set nocompatible
set encoding=utf-8
"let g:airline_detect_whitespace=0
"let g:airline#extensions#whitespace#enabled
let g:airline_powerline_fonts = 1
set laststatus=2

set backspace=indent,eol,start
set tabstop=4
set expandtab 
set softtabstop=4
set shiftwidth=4
set ignorecase
set smartcase
set number
set wrap
set linebreak
set nolist
set textwidth=0
"set ttyscroll=0
"set clipboard=unnamedplus

" nnoremap j gj
" nnoremap k gk

" Save when focus is lost
" au FocusLost * :wa

" Turn on omnicompletion
filetype plugin on
set ofu=syntaxcomplete#Complete

let g:vim_markdown_folding_disabled=1

let g:airline#extensions#whitespace#enabled=0

" Custom key combos
nmap <silent> <F3> :NERDTreeToggle<CR>

func! WordProcessorMode() 
  " setlocal formatoptions=1 
  set spell spelllang=en_us 
  set thesaurus+=~/.vim/thesaurus/mthesaur.txt
  set complete+=s
  " setlocal linebreak 
  set wrap
  set textwidth=80
  " Look like WordStar
"  colorscheme adaryn
  colorscheme xoria256-blue
"  colorscheme transparent
  filetype detect

endfu 
com! WP call WordProcessorMode()

" Back to code mode
func! CodeMode()
        map j gj 
        map k gk
        setlocal expandtab
        set textwidth=0
        colorscheme xoria256
        filetype detect
endfu
com! CODE call CodeMode()

" Idea: put a WRITE function here
" that makes the font really big. Then 
" vim can be maximized so the screen fills
" with a minimalistic editor with abou 90 columns
" to the width of the screen. 
"


nnoremap <F4> :call ToggleFocusMode()<cr>
nnoremap <F5> :Latexmk<cr>
