" VIM setup 
set nocompatible 	" not vi but VIMproved
filetype off		" required

set runtimepath^=~/.vim/bundle/ctrlp.vim

"VUNDLE packagemanager
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

"let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'
" file manager
Plugin 'https://github.com/scrooloose/nerdtree'
" Extended TAB features
Plugin 'https://github.com/ervandew/supertab'

" Nice status line
Plugin 'https://github.com/bling/vim-airline'

" Match Tags
Plugin 'https://github.com/Valloric/MatchTagAlways.git'

" SASS syntax
Plugin 'cakebaker/scss-syntax.vim'

" NERDCommenter
Plugin 'scrooloose/nerdcommenter'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets' 

" YouCompleteMe
" Plugin 'Valloric/YouCompleteMe'

" Syntax checker
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
" To use emmet: in an empty file type html:5 then press 'ctrl-y ,' Tada!
" Or visual select then press 'ctrl-y ,' and type a tag to surround selection
" For multiple tags use div>ul>li* for example

" Beautify js, json, html, css, etc
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify' " Used by vim-jsbeautify
" Jade beautifier and 2 space indentation
Plugin 'digitaltoad/vim-jade'

" to fix whitespace errors call :FixWhiteSpace
Plugin 'bronson/vim-trailing-whitespace'

" Surround words with tags, etc. For example press 'ysiw "' to surround inner
" word with "
Plugin 'tpope/vim-surround'

" Easy semicolon appending with '\ ;' whereever on a line
Plugin 'lfilho/cosco.vim'

" Auto close brackets, quotes, etc.
Plugin 'Townk/vim-autoclose'

" Auto close html, xml, etc.
Plugin 'alvan/vim-closetag'

" Improved javascript syntax highlighting and indentation
Plugin 'pangloss/vim-javascript'

" Typescript Syntax for Vim
Plugin 'leafgarland/typescript-vim'

" Git wrapper for vim : )
Plugin 'tpope/vim-fugitive'

" Solarized theme
Plugin 'altercation/vim-colors-solarized'

" Code outline viewer
Plugin 'majutsushi/tagbar'

" Navigate vim & tmux panes with hjkl
Plugin 'christoomey/vim-tmux-navigator'

" Sublime style minimap
Plugin 'severin-lemaignan/vim-minimap'

call vundle#end()

colorscheme mustang

filetype plugin indent on " required
set bs=2
set ts=4
set sw=4
set relativenumber
set ruler
set breakindent
set backupdir=~/.vim/vimswaps
set hlsearch
set expandtab

" Turn off the motion keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Make window navigation easier
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map ii <Esc> 



" custom leader
:let mapleader = ','

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" Auto start NERDTree
map <C-n> :NERDTreeToggle<CR>

" Save all the buffers for next time
nnoremap <leader>s : mksession<CR>

" Quickly edit .vimrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>

" Custom highlight for search
highlight Search ctermbg=black ctermfg=yellow cterm=underline

" NERDComment
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
" let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

syntax on
