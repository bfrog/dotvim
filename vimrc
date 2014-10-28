" vundle begin
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'

call vundle#end()
" vundle end

filetype plugin indent on

syntax on

" disable folding
set nofoldenable

" persistent undo
set undofile

" disable modelines
set nomodeline

" indentation
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set autoindent

" list autocomplete options
set wildmode=longest,list

" line wrapping
" set wrap linebreak nolist
" set textwidth=79
" set formatoptions=tcqn
set colorcolumn=80

" hidden characters
set list
set listchars=tab:▸\ ,eol:¬

" color scheme
set background=dark
if has('gui_running')
    colorscheme solarized
else
    let g:rehash256 = 1
    colorscheme molokai 
endif

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0

" Use neocomplete
let g:neocomplete#enable_at_startup = 1

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
