syntax on
set number
set wildmenu
set wildmode=list:longest,full
colo slate
set clipboard=unnamedplus
set title
set omnifunc=syntaxcomplete#Complete
filetype plugin indent on
set autoindent
set cindent
" Manage plugins with vim-plug.
call plug#begin()
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'mattn/emmet-vim'
call plug#end()
let g:ycm_autoclose_preview_window_after_insertion = 1
" Install vim-plug if it's not already installed.
"if empty(glob('~/.vim/autoload/plug.vim'))
"silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"\ https://raw.github.com/junegunn/vim-plug/master/plug.vim
"autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif
