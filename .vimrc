" " My favorite plugins " "
" ag  ctrlp.vim  tabular  vim-colors-solarized  vim-endwise  vim-matchit
" vim-rails  vim-ruby  vim-textobj-indblock  vim-textobj-rubyblock
" vim-textobj-user  vim-vividchalk

execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme vividchalk

set softtabstop=2 " How much spaces use with <Tab> and <BS> in Insert mode
set shiftwidth=2  " How much spaces use with > and < commands
set tabstop=2     " Indentaion for tab character
set expandtab     " Use spaces instead of tabs


" Fix for Putty colours - by default it has only 8 colours available
" Don't need as TERM=screen-256color do it better and more consistent
" if &term == "xterm"
"   set t_Co=256
" endif

set laststatus=2 " Always show status-line

set relativenumber

set visualbell " Disable bell on errors

" Haha, mapleader is already \ by default
" let mapleader = "\\"

nmap <leader>l :set list!<CR>        " Shortcut to rapidly toggle `set list`
nmap <leader>s :set spell!<CR>       " Toggle spellcheck
nmap <leader>ve :edit $MYVIMRC<CR>   " Edit vimrc
nmap <leader>vs :source $MYVIMRC<CR> " Take vimrc into use
nmap <leader>n :nohlsearch<CR>       " Stop highliting search word
nmap <leader>p Obinding.pry<C-C>^    " Insert 'binding.pry' above current line
nmap <leader>P Ibinding.pry<C-C>^    " Insert 'binding.pry' above current line
nmap <leader>t O@petran<C-c>==       " Insert my tag into line before
 
command! W w " Finally, :W won't be showing errors anymore

nnoremap <silent> <Space> :nohlsearch<CR> " clear the search buffer when hitting return
"cnoremap <CR> :nohlsearch<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

set hidden

set noswapfile

set backspace=indent,eol,start " allow backspacing over the start of insert; CTRL-W and CTRL-U stop once at the start of insert.

set wildignore=*/selenium/*,*/vendor/*,*/runtime/* " To exclude those dirs from CtrlP search

set hlsearch
