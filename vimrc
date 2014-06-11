" Vundle config - DO NOT TOUCH
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Bundle help
" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'

" scripts not on GitHub
" Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///home/gmarik/path/to/plugin'
" ...
"---------------------------------------------------------------------------------------------
" My Bundles
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'
    let g:ycm_global_ycm_extra_conf = '/home/michal/.vim/.ycm_extra_conf.py'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'

filetype plugin indent on     " required

"----------------------------------------------------------------------------------------------
" REAL VIMRC STARTS HERE
set encoding=utf-8     "Set encoding
set hidden             "Better buffer behavior

" Look and feel
set number
set showmatch
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
autocmd FileType c,cpp,php,rb,py,js,html autocmd BufWritePre * :%s/\s\+$//e

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
set autoindent
set smartindent
filetype plugin indent on

" Show (partial) command in the status line
set showcmd

"Solarized shit
let g:solarized_termcolors=256
set t_Co=256
syntax enable
set background=light
colorscheme molokai
" Cpp mappings and other
map <F2> :w <CR>
imap <F2> <ESC> :w <CR>
set makeprg=g++\ -Wall\ -std=c++0x\ -Wextra\ -W\ -Wformat\ -g\ %\ -o\ %<
map <F3> :make <CR>
imap <F3> <ESC> :make <CR>
map <F4> :q <CR>
imap <F4> <ESC> :q <CR>
map <F5> :vsp %<t <CR>
imap <F5> <ESC> :vsp %<t <CR>
map <F6> :!./%< <CR>
imap <F6> <ESC>:!./%< <CR>
map <F7> :!gdb %< <CR>
imap <F7> <ESC>:!gdb %< <CR>
map <F8> :!./%< < %<t <CR>
imap <F8> <ESC>:!./%< < %<t <CR>
nnoremap <Leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <Leader>f :FufFile <CR>
:command Cpp r ~/Dropbox/c++/CONTEST_LIBRARY/oldtemplate.cpp
:command Cpp11 r ~/Dropbox/c++/CONTEST_LIBRARY/template.cpp
:command Tex r ~/Dropbox/Dokumenty/TeX/template.tex
:command Py !python %
:command Pdf !pdflatex %
:command Build !g++ -Wall -Wextra -W -Wformat -g % -o %<
