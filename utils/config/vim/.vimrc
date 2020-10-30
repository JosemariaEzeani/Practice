syntax on
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set mouse=a
set nocompatible
set encoding=utf-8
set ffs=unix,dos,mac

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

set ruler
" set foldcolumn=1
set number relativenumber
set backspace=eol,start,indent

set magic
set lazyredraw

" Annoying bells
" set noerrorbells
" novisualbell
" set t_vb=
" set tm=500

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set smartindent
set nowrap
set whichwrap+=<,>,h,l

set so=7
set lbr
set tw=500

set ignorecase
set smartcase
set wildmenu
set wildmode=longest,list,full

set noswapfile
set nobackup
set nowb
set undodir=~/.vim/undodir
set undofile

set hlsearch
set incsearch
set showmatch
set mat=2

set cmdheight=1
set hid
set colorcolumn=80

highlight ColorColumn ctermbg=0 guibg=lightgrey
" Delete trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

call plug#begin('~/.vim/plugged')

" Core
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug '~/.fzf'
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
" Plug 'airblade/vim-gitcutter'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Personal

call plug#end()

colorscheme gruvbox
set bg=dark
set updatetime=100
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

nmap <C-t> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


let g:ale_sign_column_always = 1
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


silent! python3 from powerline.vim import setup as powerline_setup
silent! python3 powerline_setup()
silent! python3 del powerline_setup

set laststatus=2

" Allow passing optional flags into Rg command
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case " . <q-args>, 1, <bang>0)
