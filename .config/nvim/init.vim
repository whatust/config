" Ward off unexpectable
set nocompatible
filetype off

" Set runtimepath to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'christoomey/vim-tmux-navigator' " Vim tmux shotcuts
Plugin 'mhartington/oceanic-next'		" Vim colorschme needs true colors
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'		" Status tabline
Plugin 'vim-airline/vim-airline-themes'	" Status tabline them
Plugin 'tpope/vim-fugitive'             " Git commands from within vim
Plugin 'benmills/vimux'                 " Open prompt and run tests
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'               " Fuzzyfinder
Plugin 'scrooloose/nerdtree'            " Treed directory navigator
Plugin 'Xuyuanp/nerdtree-git-plugin'    " Show git status on NerdTreen
Plugin 'vim-perl/vim-perl'              " Syntax highlight for perl language
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'preservim/nerdcommenter'        " Comment block of code
Plugin 'ryanoasis/vim-devicons'         " Add icons to nerdtree


call vundle#end()
filetype plugin indent on

syntax enable

" Set color space
set t_Co=16

" Syntax color scheme
colorscheme ron

" Tabline theme
let g:airline_theme='deus'

" Use Patched fonts arrows and tirangles
let g:airline_powerline_fonts=1

" Remove character encoding from airline tab
let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'

" Allow space for alignment and tab for indentations
let g:airline#extensions#whitespace#mixed_indent_algo = 2

" Map leader
let mapleader = ","

" Identation
set autoindent

" Indentation optimions
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Change tab for spaces
set expandtab

" Allow backspace over autoident
set backspace=indent,eol,start

" Set max column marker
set colorcolumn=81
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Ask to confirm instead of failing exit command
set confirm

" Show partial commands on the last line of the screen
set showcmd

" Set command line height to 2 characters
set cmdheight=2

" Use utf-8 for character encoding
set encoding=utf-8
set fileencoding=utf-8

" Highlight serach matches
set hlsearch

" Shortcut to remove higlight
map <leader>n :noh<CR>

" Stop redrawing during operations
set lazyredraw

" Display unprintable characters
" set list

" Enable use of mouse on all modes
set mouse=a

" Line number
set number relativenumber

" Wildmenu
set wildmenu

" Prevent some cursor moviment from going to the start of the line
set nostartofline

" Highlight cursor
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Quickly time out on keycodes, remove timout on mappings
set notimeout ttimeout ttimeoutlen=200

" Allows shell alias from vim shell
set shell=bash

" Case sensitive search
set smartcase

" Use already open file on open file command
set switchbuf=useopen

" Use visual bell instead of beaping
set visualbell

" Autoreload files when changed (e.g. git checkout)
set autoread

" Disable visual bell removing beeping and flash
set t_vb=

" Set cursor automatic position
set scrolloff=10

" Paste mode
set pastetoggle=<F3>

" Let fzf work on tmux
let g:fzf_prefer_tmux = 1

" Vertical split
nnoremap <silent> vv <C-w>v

" Shortcut for git commands
nmap <leader>gb :Gblame<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gd :Gitdiff<CR>
nmap <leader>gcm :Gitcommit<CR>
nmap <leader>gco :!git checkout

" Diff Red Green hilight
highlight diffAdded guifg=#00bf00
highlight diffRemoved guifg=#bf0000

" Function to make tmux zoom its runner pane.
function! VimuxZoomRunner()
    call VimuxInspectRunner()
    call system("tmux resize-pane -Z")
endfunction

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

" NERDTree control map
map <C-t> :NERDTreeToggle<CR>
set modifiable
let NERDTreeShowHidden=1

" Escape using kj
imap kj <Esc>
imap Kj <Esc>
imap kJ <Esc>
imap KJ <Esc>

" Mapping fzf search commands
noremap <C-N> :GFiles<CR>
noremap <C-n> :Files<CR>

noremap <C-c> :VimuxPromptCommand<CR>
noremap <C-a> :VimuxRunLastCommand<CR>
noremap <C-i> :VimuxInspectRunner<CR>
noremap <C-q> :VimuxCloseRunner<CR>
noremap <C-x> :VimuxInterruptRunner<CR>

" Boxes
vmap <F2> !boxes -s 80 -p a1 -a c <CR>
vmap <F3> !boxes -s 80 -dshell -p a1 -a c <CR>

" Grep shortcut
if executable('ag')
    set grepprg=ag\
    let g:ctrlp_user_command = 'ag %s -l --cocolor -g ""'
endif

nnoremap Y :grep! "<C-R><C-W> ."<CR>:cw<CR>

" Remove trailing whitespaces

nmap <F2> :%s/\s\+$//e <CR>

" Change line hilight on insert mode
autocmd InsertEnter,InsertLeave * set cul!

set guicursor=n-v-c-sm:block,i-ci-ve:ver20,r-cr-o:hok20

" Changerelative number and global number
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Rebalance windows on vim resize
autocmd Vimresized * :wincmd =

