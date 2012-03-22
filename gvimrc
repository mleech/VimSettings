set guioptions-=T
set guioptions+=c
if has("gui_gtk2")
    set guifont=Inconsolata\ Medium\ 15
elseif has("gui_win32")
    set guifont=Consolas:h13:cANSI
elseif has("gui_macvim") 
    set guifont=monaco:h13
endif

"terminal vim not happy with this mapping
nnoremap <esc> :nohlsearch<return><esc>
