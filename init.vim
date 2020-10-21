set title
set number
set wildmode=list:full
set clipboard=unnamedplus
set omnifunc=syntaxcomplete#Complete
set termguicolors
filetype plugin indent on
set smartindent
set expandtab
set shiftwidth=4
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.
call plug#begin()
"Plug 'davidhalter/jedi-vim' , {'for': 'python'}
Plug 'davidhalter/jedi-vim' , {'for': 'python'}
Plug 'w0rp/ale' "with conda flake 8  and eslint (installed on every project)
Plug 'NLKNguyen/papercolor-theme'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " CocInstall coc-tsserver coc-html coc-css coc-rls coc-json
Plug 'mattn/emmet-vim', {'for': 'html'}
call plug#end()
":checkhealth will help
" needs node lts or tsserver will breakwith latest
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_linters = { 'javascript': ['standard', 'eslint'], 'python':['flake8'], 'rust':['clippy']} " always install in environment
let g:ale_fixers = {'javascript': ['standard', 'eslint'],'html': ['prettier'], 'css': ['prettier'], 'python':['autopep8'], 'rust': ['rustfmt']} " just install prettier for react, eslint already installed by default, also install eslint-config-prettier for good interaction with eslint
let g:ale_python_autopep8_options = '-aa'
let g:ale_javascript_standard_executable = 'npx standard'
let g:ale_javascript_eslint_executable = 'npx standard'
let g:jedi#completions_command = "<C-N>"
let g:jedi#show_call_signatures = 0

colo PaperColor
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro " it fixes comments
au BufNewFile,BufRead *.handlebars set filetype=html
