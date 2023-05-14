" =====================================================================
" 
" UI options and plugins
" Put UI options after plugin installation since UI requires plugins
"
" Author: Shiyue He (hsy1995313@gmail.com)
" Copyright (C): 2023
" 
" =====================================================================

" airline:
if index(g:enable_plugins, 'airline') != -1
    " Enhanced tabline
    let g:airline#extensions#tabline#enabled = 1
    " Show buffer number so I can quickly pick a buffer
    let g:airline#extensions#tabline#buffer_nr_show = 1
endif

" rawnbow:
if index(g:enable_plugins, 'rainbow') != -1
   " set to 0 if you want to enable it later via :RainbowToggle
   let g:rainbow_active = 1 
endif

" gruvbox, and builtin colorschemes
if index(g:enable_plugins, 'gruvbox') != -1
    if has('gui_running')
        set background=light
    else
        set background=dark
    endif
    colorscheme gruvbox
else
    " Builtin colorschemes: desert, peachpuff, quiet, slate
    " Colorschemes plugin: gruvbox
    colorscheme desert
endif

