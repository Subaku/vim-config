"Generated by vimrcGen(http://unoriginal.tk/vimrc), coded by shrsv 

 
"Behave like vim instead of vi 
set nocompatible
 
"Attempt to detect filetype/contents so that vim can autoindent etc 
filetype indent plugin on
 
"Enable syntax highlighting 
syntax enable
 
"Enable switching from an  unsaved buffer without saving it first and keep an undo history for multiple files. Warn when quitting without saving, and keep swap files.
"set hidden
 
"Better command-line completion 
set wildmenu
 
"Show partial commands in the last line of the screen 
"set showcmd
 
"Highlight searches (use Ctrl+L to temporarily turn off highlighting)
set hlsearch 
nnoremap <C-L> :nohl<CR><C-L>
 
"Use case insensitive search, except when using capital letters
set ignorecase 
set smartcase
 
" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
 
"When opening a new line and no filetype-specific indenting is enabled, keep the same indent as the line you're currently on(Useful for READMEs, etc)
set autoindent
 
"Display the cursor position on the last line of the screen or in the status line of a window
set ruler
 
"Always display the status line, even if only one window is displayed
set laststatus=2
 
"Instead of failing a command because of unsaved changes, instead raise a  dialogue asking if you wish to save changed files
"set confirm
 
"Use visual bell instead of beeping when doing something wrong 
set visualbell
 
"Set the command window height to 2 lines, to avoid many cases of having to press <Enter> to continue  
set cmdheight=2
 
"Display line numbers on the left
set number
 
"Quickly time out on keycodes, but never time out on mappings
"set notimeout ttimeout ttimeoutlen=200
 
"Use F11 to toggle between paste and nopaste
set pastetoggle=<F11>
 
"User specific mappints
imap jk <esc>
vmap jk <esc>
 
"Highlight the current line
"set cursorline
 
"Share windows clipboard
set clipboard+=unnamed
 
"Indentation hardtab express settings
set shiftwidth=4 
set softtabstop=4
set tabstop=4 
set expandtab
set smarttab

"Start scrolling before reaching the edge of screen
set scrolloff=8


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Colors                           "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                        Plugins                          "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Tell Pathogen to execute.
execute pathogen#infect()
call pathogen#helptags()


""""""""""""""""""""""""Nerd Tree""""""""""""""""""""""""""

"CTRL-n to toggle plugin.
map <C-n> :NERDTreeToggle<CR>

"Open Nerd Tree if opening vim without a file.
autocmd vimenter * if !argc() | NERDTree | endif

"Make window size a little bigger than default 31
let NERDTreeWinSize=75

"Positions nerd tree to the right instead of default left.
let NERDTreeWinPos="right"

"Auto close nerd tree when opening a file
let NERDTreeQuitOnOpen=1


""""""""""""""""""""""Bufexplorer""""""""""""""""""""""""""

let g:bufExplorerSortBy='name'
