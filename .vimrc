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

" adds AgRaw and RgRaw commands 
Plug 'jesseleite/vim-agriculture'

" recent files list at :MRU
Plug 'yegappan/mru'

call plug#end()

set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
silent! colorscheme ayu

" use system clipboard
set clipboard=unnamed

" highlight matches
set hlsearch

" use incremental search as you type
set is

" return to last position when reopening file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" add mouse support
set mouse=a

" keys
" Tab to cycle splits
nmap <Tab> <C-w>w

