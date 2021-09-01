"------------------------------------------------------------
" $VIMRUNTIME/defaults.vim settings

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" Avoid side effects when it was already reset.
if &compatible
  set nocompatible
endif

" Do incremental searching when it's possible to timeout.
if has('reltime')
  set incsearch
endif

" Switch syntax highlighting on when the terminal has colors or when using the
" GUI (which always has colors).
if &t_Co > 2 || has("gui_running")
  " Revert with ":syntax off".
  syntax on

  " I like highlighting strings inside C comments.  " Revert with ":unlet c_comment_strings".
  let c_comment_strings=1
endif
"------------------------------------------------------------
" Options

" Will set to interactive for the current session.
set shellcmdflag=-ic

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

" Do not recognize octal numbers for Ctrl-A and Ctrl-X, most users find it
" confusing.
set nrformats-=octal

" Indentation
" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
" set autoindent

" cindent is better tailored to C-like languages
set autoindent
set cindent " == set cin

" smartindent is more versatile for use with other programming languages
set smartcase
set smarttab
set smartindent " == set si

" Tab
set tabstop=4    " tab size to be displayed
set shiftwidth=4

" set statusline
set laststatus=2

" Display line numbers on the left
set number	" == set nu
" set relativenumber	" == rnu

" syntax highlighting
color desert
" if has ("syntax")
" 	syntax on
" endif

" set cursorline

set hlsearch

" Functional
set autowrite " Is this work??
"------------------------------------------------------------
" netrw variables

" reference: https://shapeshed.com/vim-netrw/

let g:netrw_banner = 0       " hide banner
let g:netrw_liststyle = 3    " tree style
" let g:netrw_browse_split = 0 " open file in the same window
" let g:netrw_winsize = 50     " open explore with n% of total size
"------------------------------------------------------------
" Key Mappings

" nnoremap <F1> :Stdheader<CR>  " Automatically mapped by '~/.vim/plugin/stdheader.vim'
nnoremap <F1> :Stdheader<CR>gg<S-V>}zf
nnoremap <F1><F1> gg<S-V>}zf
nnoremap <F2> :Explore<CR>
nnoremap <F3> :mksession! $git_root/.vimsession/$git_repo<CR>
nnoremap <F3><F3> :mksession! $git/.private/.vimsession/
nnoremap <F4> :q<CR><C-W>h
nnoremap <F5> :e<CR>
nnoremap <F6> :args `find . -iname \*.\[hc\]`<CR>
nnoremap <F7> /<C-R><C-W><CR>:vimgrep <C-R><C-W> ##<CR>:copen<CR>
nnoremap <F12> :set nomodifiable<CR>:set nowrite<CR>
nnoremap <F12><F12> :set modifiable<CR>:set write<CR>
" nnoremap <F6> ye:vimgrep <C-R>" ##<CR>:copen<CR>

" disable shift-k
map <S-k> <Nop>

" nnoremap <C-H> <C-W><C-H>
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>

" Tab move
nnoremap GT gT
nnoremap GG G

" Make possible two button input the same time
inoremap fj <esc>
inoremap jf <esc>
"
" nnoremap <C-L> :nohl<CR><C-L>

vnoremap / : norm i//<CR>
vnoremap ? : norm xx<CR>
"------------------------------------------------------------
" Macros
let @1='zf%]]'
