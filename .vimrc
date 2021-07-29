set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
syntax on
set number
set wildmenu
set wildmode=list:longest,full
set clipboard=unnamedplus
set title
set omnifunc=syntaxcomplete#Complete
set cindent
filetype plugin indent on    " required

call plug#begin()
Plug 'gryf/wombat256grf'

call plug#end()

set shiftwidth=4
set termguicolors
colo wombat256grf
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro " it fixes comments
set completeopt-=preview
inoremap <TAB> <C-x><C-o>
