set title
set number
set wildmode=list:full
set clipboard=unnamedplus
set omnifunc=syntaxcomplete#Complete
set termguicolors
filetype plugin indent on
set cindent
set shiftwidth=2 " for JS is needed
set expandtab
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs' "npm install -g tern
Plug 'w0rp/ale' "with conda flake 8  and eslint (installed on every project)
Plug 'mattn/emmet-vim'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
"remember to add the python, node and ruby neovim packages for deoplete.
":checkhealth will help
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_fix_on_save = 1
colo PaperColor
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro " it fixes comments
au BufNewFile,BufRead *.handlebars set filetype=html
