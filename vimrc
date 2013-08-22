set t_Co=256
set showmatch
set noswapfile
" Cpp mappings
set autoindent
set smartindent

map <F2> :w <CR>
set makeprg=g++\ -Wall\ -Wextra\ -W\ -Wformat\ -g\ %\ -o\ %<
map <F3> :make <CR>
imap <F3> <ESC>
map <F4> :wq <CR>
imap <F4> <ESC>
map <F5> :vsp %<t <CR>
map <F6> :!./%< <CR>
map <F7> :!gdb %< <CR>
map <F8> :!./%< < %<t <CR>

:command Cpp r ~/Dropbox/c++/makra.cpp
:command Tex r ~/Dropbox/Dokumenty/TeX/template.tex
:command Py !python %
:command Pdf !pdflatex %
let mapleader=","      "Set the best leader
set encoding=utf-8     "Set encoding
set hidden             "Better buffer behavior

" Look and feel
set number
set ruler

set laststatus=2       " Status bar

" Whitespace stuff
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set list listchars=tab:\ \ ,trail:·

" Remove all trailing whitespace
autocmd FileType c,cpp,php,rb,py autocmd BufWritePre * :%s/\s\+$//e

" Smoother scrolling
set scrolloff=3
nnoremap <Space> <C-d>

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Load the plugin and indent settings for the detected filetype
filetype plugin indent on


" Show (partial) command in the status line
set showcmd

syntax enable
set background=dark
colorscheme distinguished
