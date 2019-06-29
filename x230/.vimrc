" Vim Config file
" Author: Nikola Todorovic (NZT)

" =======> General <=======

" Sets how many lines of history VIM has to rembember
set history=500
" Always show current position
set ruler
" Show line numbers
set number
" Helps force plug-ins to load correctly when
" it is turned back on below
" filetype off
" Enable filetype plugins
filetype plugin on
filetype indent on
" Speed up scrolling in Vim
set ttyfast

" =======> Matching brackets <

" Show matching brackets
set showmatch
" Hoiw meny tenths of a second to blink when matching brackets
set mat=2
" Enable mouse usage (all modes)
set mouse=a

" =======> Searching part <=======

" Incremental search
set incsearch
" Show (partial) command in status line
set showcmd
" Do smart case matching
set smartcase
" Do case insensitive matching
set ignorecase
" Highlight searc results
set hlsearch

" =======> Colors and Fonts <=======

" Turn on syntax highlighting
syntax on
" Setting background
set background=dark
" Encoding
set encoding=utf-8

" =======> Text, tab and indent related <=======

"Use spaces instead of tabs
"set expandtab
"Be smart when using tabs
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" =======> Status line <=======

" Always show the status line
"set laststatus=2
" Set status line display
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
"%F%m%r\ [Format=%{&ff}]\ [Type=%Y]\ [Pos=%l,%v][%p%%]
" Activating airline plugin 
let g:airline_theme='solarized'

" =======> Plugins <=======

if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

" =======> Helper funcs <=======

" Returns ture if paste mode is enabled
function! HasPaste()
	if &paste
		return 'PASTE MODE'
	endif
	return ''
endfunction
