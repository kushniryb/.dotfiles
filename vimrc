" Use Vim settings, rather than Vi.  " Must be first, otherwise it changes options as side effect.
set nocompatible
" ============== General Config ==============

set number                      " Line numbers & background color for them
set backspace=indent,eol,start  " Allow backspace in insert mode
set history=1000                " Store :cmdline history
set showcmd                     " Show incomplete cmd down the bottom
set showmode                    " Show current mode down the bottom
set gcr=a:blinkon0              " Disable cursor blink
"set visualbell                  " No sounds
set autoread                    " Reload files changed outside vim
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

" Turn on syntax highlighting
syntax on
filetype off
" Fast cursor
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
" =========== Vundle initialization =============

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  "Plugin 'Valloric/YouCompleteMe'
  Plugin 'scrooloose/nerdtree'
  Plugin 'othree/html5.vim'
  Plugin 'tpope/vim-rails'
  Plugin 'tpope/vim-endwise'
  Plugin 'vim-ruby/vim-ruby'
  Plugin 'flazz/vim-colorschemes'
  Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/' }
  Plugin 'MarcWeber/vim-addon-mw-utils'
  Plugin 'tomtom/tlib_vim'
  Plugin 'garbas/vim-snipmate'
  Plugin 'honza/vim-snippets'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'wakatime/vim-wakatime'
call vundle#end()

" ============ Turn off swap files ===============
set noswapfile
set nobackup
set nowb
" ================= Plugins configuration ====================="
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" ============ Colorscheme  + Powerline ========================
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" Always show statusline
set laststatus=2
set encoding=utf8

"let g:molokai_original=1
set t_Co=256
set background=dark
colorscheme Monokai
hi Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

"colorscheme molokai
" Line numbers background
" ============ Indentation =========================

set autoindent
set smarttab
set smartindent
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Display lines that goes over 80 characters
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

autocmd FileType yaml let b:did_indent=1
" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default
" ================ NERD Tree Options ====================
map <C-n> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>
" Remove all whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
