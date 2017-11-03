set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'szw/vim-tags'
Plugin 'mattn/emmet-vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/Vimball'
Plugin 'fatih/vim-go'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'vim-airline/vim-airline'

call vundle#end()            " required
filetype plugin indent on    " required


set autoindent
set cindent
syntax enable
:set tabstop=2
:set ts=2
:set shiftwidth=2
:set expandtab
set nu
:nmap <F12> :set invnumber<CR>
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
set mouse=a
set clipboard=unnamedplus
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
"set hlsearch

:setlocal cm=blowfish

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

colorscheme railscasts        " awesome colorscheme
set cursorline          " highlight current line
set foldenable 

autocmd FileType ruby map <F9> :w<CR>:!ruby -c %<CR>
autocmd FileType eruby map <F8> :w<CR>:! rails-erb-check  %<CR>

ab pe <%= %>
ab pr <% %>
ab pw <%# %>
ab rend <% end %>
ab relse <% else %>
ab rif <% if %>


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" set background=dark
" colorscheme slate

syntax enable
if has("gui_running")
  if has("gui_gtk2")
    set guifont=\Monospace\ 12
    set background=dark
    set guioptions -=m 
    set guioptions -=T
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
    "colorscheme base16-atelierheath
    colorscheme railscasts
  end
end

noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


" disable the Background Color Erase that messes with some color schemes
set t_ut=

"status bar
set laststatus=2
