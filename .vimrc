set nocompatible               " be iMproved
filetype on " required!
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/powerline'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'EasyGrep'
Bundle 'Valloric/YouCompleteMe'
Bundle 'airblade/vim-gitgutter'
Bundle 'Rykka/riv.vim'
Bundle 'jnwhiteh/vim-golang'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'klen/python-mode'
Bundle 'groenewege/vim-less'


filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"


set number
syntax on
syntax enable
set backspace=indent,eol,start

set background=dark
colorscheme solarized

"
" NERDTree
"

autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore = ['\.pyc$']
map <C-n> :NERDTreeToggle<CR>
autocmd BufNew * wincmd l

"
" Powerline
"

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set guifont=Ubuntu\ Mono\ derivative\ Powerline

"
" Python Spesific
"

set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=80
set smarttab
set expandtab
set colorcolumn=80

let g:syntastic_python_checkers=['flake8']

"
" Ctrl-P
"

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"
" YCM
"

let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:syntastic_javascript_checkers = ['jshint']
nnoremap <Leader>m :w <BAR> !lessc % > %:t:r.css<CR><space>

"
" Filetype spesific
"
autocmd filetype crontab setlocal nobackup nowritebackup
autocmd Filetype py setlocal ts=4 sts=4 sw=4 et sta ai
autocmd Filetype cpp setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2
autocmd Filetype go setlocal ts=4 sts=4 sw=4 et!

