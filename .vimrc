set laststatus=2
set number
"set relativenumber
"set numberwith=5

set splitright
set splitbelow

call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" use system clipboard
set clipboard=unnamed

" highlight matches
set hlsearch
