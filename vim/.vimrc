set nocompatible "be iMproved

set t_Co=256

cmap w!! %!sudo tee > /dev/null %

" set mouse=a

" is this overridden by vundle section?
filetype plugin indent on

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

set hidden


map <Del> :bd<CR>

" set number
set noeb
set novb

set shiftwidth=4
set tabstop=4
set expandtab 
set shiftwidth=4

set tenc=utf8    "terminal encoding is UTF-8
set enc=utf8     "character encoding is UTF-8
"set laststatus=2 "always show status line

" vundle (plugin manager)
filetype off "required for vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set splitright
set splitbelow

" Bundles
Bundle 'gmarik/vundle'
Bundle 'vim-scripts/ctrlp.vim'
Bundle 'vim-scripts/The-NERD-tree'
Bundle 'tpope/vim-surround'
Bundle 'Twinside/vim-haskellFold'
"probably requires hdevtools right?
Bundle 'bitc/vim-hdevtools'
"gotta have exuberant-ctags for this one.
Bundle 'majutsushi/tagbar'
"lushtags requires manual installation :/
Bundle 'bitc/lushtags'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/powerline'
Bundle 'altercation/vim-colors-solarized'

" Tagbar
nmap <F8> :TagbarToggle<CR>

nmap ,b :CtrlPBuffer<CR>

syntax on
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Menu / Completion
set wildmenu
"set wildmode=list:longest,full
set wildmode=longest,list,full
set completeopt=menuone,menu,longest,preview
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif

" Runtime settings
runtime ftplugin/man.vim

" file / buffer with NERD-tree
nmap <silent> <Leader>ntt :NERDTreeToggle<CR>
nmap <silent> <Leader>ntf :NERDTreeFind<CR> 

autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 

set nofoldenable
set foldcolumn=0

highlight Folded ctermfg=241
highlight Folded ctermbg=255

au FileType haskell nnoremap <buffer> <F1> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F2> :HdevtoolsClear<CR>

set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)"

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
