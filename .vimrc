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

" Shortcut to rapidly toggle `set list`
nnoremap <leader>l :set list!<CR>
" Toggle spellcheck
nnoremap <leader>s :set spell!<CR>
" Edit vimrc
nnoremap <leader>ve :edit $MYVIMRC<CR>
" Take vimrc into use
nnoremap <leader>vs :source $MYVIMRC<CR>
" Stop highliting search word
nnoremap <leader>n :nohlsearch<CR>
" Insert 'binding.pry' above current line
nnoremap <leader>p Obinding.pry<C-C>^
" Insert my tag into line before
nnoremap <leader>t O@petran<C-c>==
" Search for word under cursor with silver searcher
nnoremap <leader>a :Ag!<C-R><C-W><CR>
" Insert my tag into line before
nnoremap <leader>c :!ctags -R --exclude=runtime .<CR>
" Insert default PageObject block
nnoremap <leader>po oon(Portal::) { \|page\| }<C-c>F:a
" Insert default PageObject block with do/end
nnoremap <leader>pob oon(Portal::) do \|page\|<CR>end<C-c>k2f:
" Insert default PageObject block with do/end
nnoremap <leader>cd :cd %:p:h<CR>
" Run Rubocop
nnoremap <silent> <leader>r :call SaveAndRun('RuboCop')<CR>
" Figitive mappings
nn <silent> <leader>gplr :Git pull --rebase<CR>
nn <silent> <leader>gpsh :Git push<CR>
nn <silent> <leader>gst :Gst<CR>


" Capital Y working more logical now
map Y y$

" Just in case. Like the idea but not sure if it's needed for me
" inoremap <CR> <C-G>u<CR>

" clear the search buffer when hitting return
nnoremap <silent> <Space> :nohlsearch<CR>
" Hardcode cucumber for now
nnoremap <F5> :call SaveAndRun('Dispatch rake features:petran')<CR>

function! SaveAndRun(command)
  exe 'wa' 
  exe a:command
endfunction

set autowriteall

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,trail:~,eol:¬

set hidden

set noswapfile

set backspace=indent,eol,start " allow backspacing over the start of insert; CTRL-W and CTRL-U stop once at the start of insert.

set wildignore=*/selenium/*,*/vendor/*,*/runtime/* " To exclude those dirs from CtrlP search

set hlsearch
set incsearch
set ignorecase
set smartcase
"set nowrapscan

let g:ctrlp_regexp = 1
let g:ctrlp_root_markers = ['Gemfile']

set encoding=utf-8
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

set history=1000

set splitbelow

set showcmd

autocmd BufRead *.rb set path+=. suffixesadd=.rb

set foldmethod=syntax

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window.
autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
autocmd InsertLeave * let &l:foldmethod=w:last_fdm

" To show carriage return chars use:
" :e ++ff=unix

let g:dbext_default_type   = 'MySQL'
let g:dbext_default_user   = 'root'


" Abbreviations
ca Wq wq
