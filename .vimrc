set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'morhetz/gruvbox' "Gruvbox color theme

Plugin 'thoughtbot/vim-rspec' "For running rspec
Plugin 'tpope/dispatch.vim'

" Plugin 'jelera/vim-javascript-syntax'
" Plugin 'pangloss/vim-javascript'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'Raimondi/delimitMate'

call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
syntax on
set background=dark
colorscheme gruvbox

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
" Below are the pathogen configuration
" execute pathogen#infect()
" syntax on
" filetype plugin indent on
" Helptags
" autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2

set grepprg=ag
