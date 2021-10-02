

set encoding=UTF-8
set number
set noswapfile
syntax enable
set scrolloff=7
" set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix

" ===================================
call plug#begin('~/.vim/plugged')

" begin - colorscheme pluginn
Plug 'sonph/onehalf', {'rtp': 'vim'}
Plug 'Rigellute/shades-of-purple.vim'
" end - colorscheme pluginn
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end()
" ===================================

if (has('termguicolors'))
    set termguicolors
endif

"colorscheme onehalfdark
colorscheme shades_of_purple

let g:airline_themes='shades_of_purple'
let g:shades_of_purple_airline = 1
let g:airline_powerline_fonts = 1

" NERDCommenter
nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDtree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NERDTreeToggle<CR>

" devicons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1 
let g:webdevicons_enable_vimfiler = 0 
let g:webdevicons_enable_airline_tabline = 1 
let g:webdevicons_enable_airline_statusline = 1 
let g:webdevicons_enable_ctrlp = 1 
let g:webdevicons_enable_flagship_statusline = 0 
let g:WebDevIconsUnicodeDecorateFileNodes = 0
let g:WevDevIconsOS = 'Darwin'
