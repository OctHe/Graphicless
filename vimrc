" =====================================================================
" 
" VIM run command file of CIM
" Author: Shiyue He (hsy1995313@gmail.com)
" Copyright (C): 2023
" 
" =====================================================================
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
" Avoid side effects when it was already reset.
if &compatible
  set nocompatible
endif

" Enable file type detection.
filetype plugin on
" Enable automatic indentation as you type.
filetype indent on

call adapter#init()

call CIM#options()
call CIM#command()
call CIM#keymapping()


" Vertical split: 
" highlight VertSplit ctermfg=234 ctermbg=darkgrey

" Highlight column
" set colorcolumn=80
" highlight ColorColumn ctermbg=6
