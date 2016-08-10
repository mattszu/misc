"##########################"
"       VUNDLE             "
"##########################"
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

"### PLUGINS ###
"Powerline - thingy
Plugin 'vim-airline/vim-airline'
"NERDTree - file explorer
Plugin 'scrooloose/nerdtree.git'
"Auto-pairs - automated bracket pairing
Plugin 'jiangmiao/auto-pairs.git'
"Auto-tag - automatically adds new tags to tags file upon saving new file
" for ctags
Plugin 'craigemery/vim-autotag'
"more color schemes
Plugin 'flazz/vim-colorschemes'
" All of your Plugins must be added before the following line
Plugin 'mattn/calendar-vim'
Plugin 'vimwiki'
call vundle#end()            " required
filetype plugin indent on    " required
" #################################################################

" #########################
" # CUSTOM BEGINNER VIMRC #
" #########################

" ####### COLOURS #################################
"[colour scheme theme]
set t_Co=256
colorscheme jellybeans
"colorscheme dante
" #### BACKGROUND #######                                                    
"[make background transparent]                              
"highlight Normal ctermbg=none                                   
"highlight NonText ctermbg=none 
"##################################################
"[Fix colors and background make uniform]                                                            
if &term =~ '256color'                                                                               
  " disable Background Color Erase (BCE)                                                             
  set t_ut=                                                                                          
endif                                                                                                
"###################################################
"============== VIM KATAs ==========================
"    harder, better, faster, stronger
"0.ESC CTRL
inoremap jk <Esc>
cnoremap jk <Esc>
vnoremap jk <Esc>
"1.disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
cnoremap <Up> <NOP>
cnoremap <Down> <NOP>
cnoremap <Left> <NOP>
cnoremap <Right> <NOP>
vnoremap <Up> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>
"2.disable h,j,k,l
"
"##################################################                                                  
"leader key for vimwiki
let mapleader="\<Space>"
set mouse=a
set clipboard=unnamed
"### SPACES & TABS ################################                                                  
"[number of visual spaces per TAB]                                                                   
set tabstop=4                                                                                        
"[number of spaces in tab when editing]                                                              
set softtabstop=4
"[tabs are spaces]
set expandtab

" indent when moving to the next line while writing code
set autoindent
"#### UI CONFIG ##################################
"[show line numbers]
set number

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1

"#################################################

" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://www.benorenstein.com/blog/your-first-vimrc-should-be-nearly-empty/

" Original Author:       Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:           2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

