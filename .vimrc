set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
syntax on
set number
set wildmenu
set wildmode=list:longest,full
colo industry
set clipboard=unnamedplus
set title
set omnifunc=syntaxcomplete#Complete
filetype plugin indent on
set cindent
set shiftwidth=4
set termguicolors
set completeopt-=preview
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()
Plug 'Valloric/YouCompleteMe'

call plug#end()
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro " it fixes comments
set completeopt-=preview
