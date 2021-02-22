"нумерация строк и подсветка
set number
syntax on

"отступы при нажатии TAB
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2

"отсуп между левой частью окна
set foldcolumn=2

"стилизация поиска
set hlsearch
set incsearch
set ignorecase
set smartcase

"подсветка выделения строки
set cursorline

"отключение звука
set noerrorbells
set novisualbell
set vb t_vb=

" BEGIN служебные файлы
"set nobackup " отключение backup file
"set noswapfile " отключение swap   file
"set noundofile  " отключение undo   file
set backupdir=~/.vim/vimtmp
set directory=~/.vim/vimtmp
set undodir=~/.vim/vimtmp
" END служебные файлы

call plug#begin('~/.vim/plugged')
"TREE
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"SEARCH
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
"NAVIGATION TMUX
Plug 'christoomey/vim-tmux-navigator'
"COLOR ICONS
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
"COLORSHEME
Plug 'ErichDonGubler/vim-sublime-monokai'
"AUTO ADD SYNTAX
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"EMMET
Plug 'mattn/emmet-vim'
"PRETTIER
Plug 'prettier/vim-prettier', {
   \ 'do': 'npm install',
   \ 'branch': 'release/0.x',
   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
"RAINBOW COLOR BRACETS
Plug 'luochen1990/rainbow'
"JS LIGHT
Plug 'jelera/vim-javascript-syntax'

call plug#end()

"mappings
map <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
let g:NERDTreeGitStatusWithFlags = 1
let NERDTreeShowHidden=1

"prettier
let g:prettier#config#tab_width = '2'

" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-phpls',
  \ 'coc-css',
  \ ]

"color
colorscheme sublimemonokai

"icons color
let s:colors = 
  \ {'brown'      : "905532",
  \ 'aqua'        : "3AFFDB",
  \ 'blue'        : "689FB6",
  \ 'darkBlue'    : "44788E",
  \ 'purple'      : "834F79",
  \ 'lightPurple' : "834F79",
  \ 'red'         : "AE403F",
  \ 'beige'        : "F5C06F",
  \ 'yellow'      : "F09F17",
  \ 'orange'      : "D4843E",
  \ 'darkOrange'  : "F16529",
  \ 'pink'        : "CB6F6F",
  \ 'salmon'      : "EE6E73",
  \ 'green'       : "8FAA54",
  \ 'lightGreen'  : "31B53E",
  \ 'white'       : "FFFFFF"
  \ }

"color for bracets
let g:rainbow_active = 1

let g:airline_powerline_fonts = 1
