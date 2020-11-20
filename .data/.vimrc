"------------------------------------------------------------
" netrw variables
" reference: https://shapeshed.com/vim-netrw/

let g:netrw_banner = 0       " hide banner
let g:netrw_liststyle = 3    " tree style
" let g:netrw_browse_split = 0 " open file in the same window
let g:netrw_winsize = 50     " open explore with 25% of total size

"------------------------------------------------------------

set tabstop=4    " tab size to be displayed
set shiftwidth=4

"------------------------------------------------------------
" Will set to interactive for the current session.

set shellcmdflag=-ic

"------------------------------------------------------------
" Indentation
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
" set autoindent

" cindent is better tailored to C-like languages
set autoindent
set cindent " =set cin

" smartindent is more versatile for use with other programming languages
set smartcase
set smarttab
set smartindent " =set si

"------------------------------------------------------------
" $VIMRUNTIME/defaults.vim settings

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" Avoid side effects when it was already reset.
if &compatible
  set nocompatible
endif

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

set ruler	" show the cursor position all the time
set showcmd	" display incomplete commands
set wildmenu	" display completion matches in a status line

set ttimeout		" time out for key codes
set ttimeoutlen=100	" wait up to 100ms after Esc for special key

" Show @@@ in the last line if it is truncated.
set display=truncate

" Show a few lines of context around the cursor.  Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
" set scrolloff=10

" Do incremental searching when it's possible to timeout.
if has('reltime')
  set incsearch
endif

" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal

" Switch syntax highlighting on when the terminal has colors or when using the
" GUI (which always has colors).
if &t_Co > 2 || has("gui_running")
  " Revert with ":syntax off".
  syntax on

  " I like highlighting strings inside C comments.  " Revert with ":unlet c_comment_strings".
  let c_comment_strings=1
endif
"------------------------------------------------------------
" set statusline
set laststatus=2

" Display line numbers on the left
set number	" ==set nu
" set relativenumber	" ==rnu

" syntax highlighting
color desert
" if has ("syntax")
" 	syntax on
" endif

set hlsearch

"------------------------------------------------------------
" Mappings

map <F2> :Vex<CR>
map <F3> :mksession! ~/programming/git/.private/vimsession/
map <F4> :qa<CR>
map <F5> :set nonumber<CR>

" nnoremap <C-H> <C-W><C-H>
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>

nnoremap GT gT

nnoremap GG G

" make possible two button input the same time
inoremap jf <esc>
inoremap fj <esc>
" nnoremap <C-L> :nohl<CR><C-L>

"------------------------------------------------------------
