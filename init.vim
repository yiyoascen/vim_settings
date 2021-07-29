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
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'w0rp/ale' "with jedi flake8, pynvim, autopep8, mypy and bandit  and eslint (installed on every project)
Plug 'NLKNguyen/papercolor-theme'
Plug 'sainnhe/sonokai'
Plug 'liuchengxu/space-vim-dark'
Plug 'dart-lang/dart-vim-plugin', {'for':'dart'} " fix path to sdk before
Plug 'racer-rust/vim-racer', {'for':'rust'} "install racer
Plug 'neoclide/coc.nvim', {'for': ['dart','c','cpp','go', 'javascript','css', 'html', 'json' ],'branch': 'release'} " CocInstall coc-tsserver coc-html coc-css coc-sql coc-json coc-clangd coc-flutter can also do coc-pyright for python
Plug 'mattn/emmet-vim', {'for': ['rust','javascript', 'html', 'handlebars', 'python'] }
call plug#end()
":checkhealth will help
" needs node lts or tsserver will breakwith latest
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_linters = {'dart': ['dartanalyzer', 'language_server'],'javascript': ['standard', 'eslint'], 'python':['flake8', 'pylint', 'mypy', 'pyright', 'bandit'], 'rust':['cargo'], 'go':['golint','govet'],  'c':['clangd', 'clangcheck'],'cpp':['clangd', 'clangcheck'] } " always install in environment  install clangd, the dart analysis_server causes an error, but all three are needed to fix with ale, coc can handle this
let g:ale_fixers = {'dart': ['dartfmt'],'javascript': ['prettier','standard', 'eslint' ],'html': ['prettier'], 'css': ['prettier'], 'python':['autopep8'], 'rust': ['rustfmt'], 'go':['gofmt'], 'c':['clang-format', 'clangtidy'],'cpp':['clang-format', 'clangtidy']} " just install prettier for react, eslint already installed by default, also install eslint-config-prettier for good interaction with eslint, rustup component add rustfmt

let g:ale_python_autopep8_options = '-aa'
let g:ale_javascript_standard_executable = 'npx standard'
let g:ale_javascript_eslint_executable = 'npx standard'
let g:jedi#show_call_signatures = 0
let g:jedi#popup_on_dot = 0
colo PaperColor
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro " it fixes comments
au BufNewFile,BufRead *.handlebars set filetype=html
autocmd FileType python setlocal completeopt-=preview

inoremap <TAB> <C-x><C-o>
