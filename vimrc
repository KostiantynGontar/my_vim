set nocompatible              " be iMproved
"filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on 
let g:vundle_default_git_proto = 'git'

" Bundle plugins
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'The-NERD-tree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 't9md/vim-chef'

"Bundle 'vim-ruby/vim-ruby'

" Airline
set encoding=utf-8
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
set t_Co=256

" Tabs and indent
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set nosmartindent
set autoindent
"set noautoindent

" Status line
set laststatus=2

" Reletive Numbers
"set number 

" Search
set showmatch 
set hlsearch
set incsearch
set ignorecase

" NERD Tree
"autocmd vimenter * NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_smart_startup_focus=2

"Ruby filetypes
autocmd BufNewFile,BufRead Gemfile set filetype=ruby
autocmd BufNewFile,BufRead Vagrantfile set filetype=ruby
autocmd BufNewFile,BufRead Berksfile set filetype=ruby
autocmd BufNewFile,BufRead Thorfile set filetype=ruby

"Vim-ruby
"syntax on             " Enable syntax highlighting
"filetype on           " Enable filetype detection
"filetype indent on    " Enable filetype-specific indenting
"filetype plugin on    " Enable filetype-specific plugins

" Chef
au BufNewFile,BufRead */*cookbooks/*  call s:SetupChef()
function! s:SetupChef()
        " Mouse:
        " Left mouse click to GO!
        nnoremap <buffer> <silent> <2-LeftMouse> :<C-u>ChefFindAny<CR>
        " Right mouse click to Back!
        nnoremap <buffer> <silent> <RightMouse> <C-o>

        " Keyboard:
        nnoremap <buffer> <silent> <M-a>      :<C-u>ChefFindAny<CR>
        nnoremap <buffer> <silent> <M-f>      :<C-u>ChefFindAnySplit<CR>
    endfunction
