" First things first - turn on no-compatible
" (for advanced features) - otherwise we might
" as well just use vi :-)
set nocompatible

" turn off pattern match highlighting
"set nohls

" turn on line numbers
set number

"TAB SETTINGS
" indent of two
set tabstop=2
" expand tabs to spaces
set expandtab
" number of spaces to use for autoindenting
set shiftwidth=2
" auto indenting features
set autoindent
set smartindent

" Remove gvim toolbar
set guioptions-=T

" Stop vim from flashing and/or beeping
set vb t_vb=

" Always show current position along bottom
set ruler

" Turn on incrementsl searching
set incsearch

colorscheme desert

" Turn on syntax highlighting
syntax enable

" Make vim treat .nant files as .ant files
autocmd BufNewFile,BufRead *.nant setf ant

" Show what mode we're in
set showmode
" Always show the status line
set laststatus=2

" Make backspace not suck
set backspace=eol,indent,start

" Allow buffers to remain unsaved when switching to a new buffer
set hidden

" key mappings
"make tab in visual mode indent code
vmap <tab> >gv
vmap <s-tab> <gv
" in insert mode, remaps tab to ctrl-n, for autocomplete
inoremap <Tab> <C-N>
" remap CTRL-l to ESC
noremap! <C-l> <esc>
lnoremap <C-l> <esc>
" set CTRL-k to pastetoggle
set pastetoggle=<C-k>

" change the location of swap and backup files
set backupdir=~/vimtmp,.
set directory=~/vimtmp,.

set ttyfast " u got a fast terminal
set ttyscroll=3
