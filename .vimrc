set number
syntax on
set expandtab
set tabstop=2
set hlsearch
set incsearch
set cursorline
set noerrorbells
set vb t_vb=

" BEGIN служебные файлы
set nobackup " отключение backup file
set noswapfile " отключение swap   file
set noundofile  " отключение undo   file
set backupdir=~/.vim/vimtmp
set directory=~/.vim/vimtmp
set undodir=~/.vim/vimtmp
" END служебные файлы

call plug#begin('~/.vim/plugged')

"Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'christoomey/vim-tmux-navigator'
"Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'scrooloose/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'mattn/emmet-vim'
Plug 'prettier/vim-prettier', {
   \ 'do': 'npm install',
   \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Initialize plugin system
call plug#end()
"prettier
let g:prettier#config#tab_width = '2'
"mappings
map <C-n> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle
let g:NERDTreeGitStatusWithFlags = 1
let NERDTreeShowHidden=1

"color
colorscheme sublimemonokai

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

