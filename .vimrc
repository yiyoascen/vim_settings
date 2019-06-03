syntax on
set number
set wildmenu
set wildmode=list:longest,full
colo slate
set clipboard=unnamedplus
set completeopt=menu,preview
set smartindent
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
set title
filetype plugin on
set omnifunc=syntaxcomplete#Complete
