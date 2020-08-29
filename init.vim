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
Plug 'deoplete-plugins/deoplete-jedi' "install jedi
Plug 'carlitux/deoplete-ternjs' "npm install -g tern, or better yet on each project along with eslint
Plug 'w0rp/ale' "with conda flake 8  and eslint (installed on every project)
Plug 'mattn/emmet-vim'
Plug 'ternjs/tern_for_vim'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
"remember to add the python, node and ruby neovim packages for deoplete.
":checkhealth will help
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_linters = { 'javascript': ['standard'], 'python':['flake8']} " works with standard js
let g:ale_fixers = {'javascript': ['standard'], 'python':['autopep8']}
let g:ale_python_autopep8_options = '-aa'
let g:ale_javascript_standard_executable = 'npx standard'

colo PaperColor
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro " it fixes comments
au BufNewFile,BufRead *.handlebars set filetype=html
