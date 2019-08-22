set title
colo evening
set number
set cindent
set wildmode=list:full
set clipboard=unnamedplus
set omnifunc=syntaxcomplete#Complete
set termguicolors
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
let g:netrw_banner = 0
let g:netrw_winsize = 15
call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/syntastic'
Plug 'digitaltoad/vim-pug'
Plug 'mattn/emmet-vim'
call plug#end()
let g:deoplete#enable_at_startup = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
