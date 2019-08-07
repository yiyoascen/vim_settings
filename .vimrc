set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
syntax on
set number
set wildmenu
set wildmode=list:longest,full
colo pablo
set clipboard=unnamedplus
set title
set omnifunc=syntaxcomplete#Complete
filetype plugin indent on
set cindent
set shiftwidth=2
set expandtab
set termguicolors
let g:netrw_banner = 0
let g:netrw_winsize = 12
" Manage plugins with vim-plug.
call plug#begin()
Plug 'Valloric/YouCompleteMe'
Plug 'digitaltoad/vim-pug'
Plug 'mattn/emmet-vim'
call plug#end()
set completeopt-=preview
