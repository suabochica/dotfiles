"-------------------------------------------------------------------------------
"
" ▄▄   ▄▄ ▄▄▄ ▄▄   ▄▄
" █  █ █  █   █  █▄█  █
" █  █▄█  █   █       █
" █       █   █       █
" █       █   █       █
"  █     ██   █ ██▄██ █
"   █▄▄▄█ █▄▄▄█▄█   █▄█
"
" Name:     .vimrc
" Version:  1.0, 20.MAY.2021
" Purpose:  Customized vim configuration
" Author:   Sergio L. Benítez D., http://suabochica.com
"
"
" Note: Type :so % to refresh .vimrc after making changes
" Note: Type :set paste to enable paste mode and paste properly from gist. After paste run :set no paste
" Install latest vim version:
" ```
" $ sudo add-apt-repository ppa:jonathonf/vim
" $ sudo apt update
" $ sudo apt install vim
" ```
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
"   1.0 General
"-------------------------------------------------------------------------------

set history=500
set autoread

filetype plugin on
filetype indent on

"Use TAB to complete when typing words, else inserts TABs as usual.
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction

"-------------------------------------------------------------------------------
"   2.0 Vim user interface
"-------------------------------------------------------------------------------

let $LANG='en'

set so=7
set langmenu=en
set wildmenu
set ruler

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

set colorcolumn=80
set cursorline
set number
set relativenumber
set showcmd
set showmatch

 Unforce save buffer
set hidden

"-------------------------------------------------------------------------------
"   3.0 Colors and fonts
"-------------------------------------------------------------------------------

syntax on
syntax enable
set encoding=UTF-8
set t_Co=256

"-------------------------------------------------------------------------------
"   4.0 Text, tabs and indent related
"-------------------------------------------------------------------------------

set expandtab
set smarttab

set autoindent
set smartindent

set nocompatible
filetype off
filetype plugin indent on

set foldenable
set foldlevelstart=10
set foldmethod=indent

set mouse=a

au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.html,
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
    \ set textwidth=80 |
    \ set fileformat=unix |

"-------------------------------------------------------------------------------
"   5.0 Vim-plug, plugin manager
"-------------------------------------------------------------------------------

" To install vim-plug:
" 1. Verify that the /.vim folder is created.
" 2. Run the next command:
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if filereadable(expand("~/.vimrc.plug"))
    source ~/.vimrc.plug
endif

"-------------------------------------------------------------------------------
"   6.0 Mappings
"-------------------------------------------------------------------------------

let mapleader="\<Space>" "Leader: a command prefix

" Training your fingers
inoremap qq <esc>

" Disable recording
map q <Nop>

" Buffers
" -------------------------------------
" Enable the list of buffer
nnoremap <C-b> :buffers<CR>:buffer<Space>
nnoremap <Leader>p :b#<CR>

" Windows
" -------------------------------------
" <C-w>v   - Split window vertically
" <C-w>s   - Split window horizontally
"
" Mapings to navigate between panels
nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k

" Resize splits
" Ctrl-w +  Increase the height one row
nnoremap <silent> <Leader>+ :resize +5<CR>
" Ctrl-w -  Decrease the height one row
nnoremap <silent> <Leader>- :resize -5<CR>
" Crtl-w >  Increase the width one row
nnoremap <silent> <Leader>> :vertical resize +5<CR>
" Crtl-w <  Decrease the width one row
nnoremap <silent> <Leader>< :vertical resize -5<CR>

" Tabs
" -------------------------------------

" :tabnew name      - Create a new tab
" :tabf /fpath      - Create a new tab with the searched file
" :next/gt          - Navigate next tab
" :last/gT          - Navigate last tab
" :e                - Edit file

" Nvim
" -------------------------------------
" To install nvim last stable version:
" ```
" $ sudo add-apt-repository ppa:neovim-ppa/stable
" $ sudo apt-get update
" $ sudo apt-get install neovim
" ```
"
" To share setup between vim and nvim:
" 1. create the nvim directory with `$ mkdir -p .config/nvim`
" 2. put the next content in the file .config/nvim/init.vim
" ```
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath=&runtimepath
" source ~/.vimrc
" ```
if has('nvim')
    tnoremap \<Esc> <C-\><C-n>
endif

"-------------------------------------------------------------------------------
"   7.0 Misc
"-------------------------------------------------------------------------------
let markdown_fenced_languages = ['html', 'python', 'bash=sh']
" Set typescript syntax
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript