"
" minimal vimrc.
"

set nocompatible

filetype plugin indent on       " Load plugin according to detected filetype.
syntax enable                   " Enable syntax highlighting.

set encoding    =utf-8          " Set utf-8 as standard encoding.
set number                      " Display line number.
set colorcolumn =80             " Display vertical rulers.
set relativenumber              " Display relative line number.
set textwidth   =80             " Set text width. 

set autoindent	                " Indent according to previous line.
set expandtab	                " Use spaces instead of tabs.
set softtabstop =2              " Tab key indents by 4 spaces.
set shiftwidth  =2              " >> indents by 4 spaces.
set shiftround                  " >> indents to next multiple of 'shifwidth'.

set backspace =indent,eol,start " Make backspace work as you would expect.
set hidden                      " Switch between buffers without having to save first.
set laststatus =2               " Always show statusline.
set display    =lastline        " Show as much as possible of the last line.

set showmode                    " Show current mode in command-line.
set showcmd                     " Show already typed keys when more are expected.

set incsearch                   " Highlight while searching with / or ?.
set hlsearch                    " Keep matches highlighted.
set ignorecase                  " Ignore case while searching.

set ttyfast                     " Faster redrawing.
set lazyredraw                  " Only redraw when necessary.

set splitbelow                  " Open new windows below the current window.
set splitright                  " Open new windows right of the current window.

set cursorline                  " Find the current line quickly.
set wrapscan                    " Searches wrap around end-of-file.
set report    =0                " Always report changed lines.
set synmaxcol =200              " Only highlight the first 200 columns.

set list                        " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif 

" Plugin
call plug#begin('~/.vim/plugged')
    Plug    'scrooloose/nerdtree'
    Plug    'morhetz/gruvbox'
call plug#end()

set background  =dark
colorscheme gruvbox
