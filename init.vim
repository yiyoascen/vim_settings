set title
colo evening
set number
set wildmode=list:full
set clipboard=unnamedplus
set omnifunc=syntaxcomplete#Complete
set termguicolors
filetype plugin indent on
set cindent
set shiftwidth=4
set expandtab
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
let g:netrw_banner = 0
let g:netrw_winsize = 15
call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
Plug 'digitaltoad/vim-pug'
Plug 'mattn/emmet-vim'
call plug#end()
let g:deoplete#enable_at_startup = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
