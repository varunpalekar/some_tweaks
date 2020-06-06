filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
colo delek
set background=dark

" For installation see https://github.com/junegunn/vim-plug#installation
call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-eunuch'
Plug 'godlygeek/tabular'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'

call plug#end()
nmap <F6> :NERDTreeToggle<CR>
set pastetoggle=<F2>
