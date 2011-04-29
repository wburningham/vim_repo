" wburningham's vimrc file
" last updated: 29-Apr-2011
" wburningham@gmail.com


" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible


" Enable filetypes
filetype plugin on
filetype indent on

" Switch on syntax highlighting.
syntax on

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048


"Enable code folding
"set foldenable

"Shortcut to fold tags with leader (usually \) + ft
"nnoremap <leader>ft Vatzf


" Make command line two lines high
set ch=2

" If you select some lines then press > to indent the lines, the selection is removed. The indentation can be repeated on the same range using ., but if you still want to retain the visual selection after having pressed > or <, you can use these mappings
vnoremap > >gv
vnoremap < <gv


" Show the current mode
set showmode

" Show the current command in the lower right corner
set showcmd
" Hide the mouse pointer while typing
set mousehide

colorscheme dusk
set nohidden
" Show the current cursor position in the lower right corner
set ruler
set nocompatible
" Tab settings
set tabstop=3
set shiftwidth=3
set softtabstop=3


set guifont=Monaco:h17

" Switch between buffers without saving
set hidden

"Show line numbers
set number  	

" Indent settings
set autoindent
set smartindent
" Make the command-line completion better
set wildmenu

set laststatus=2
set linespace=3
set go-=T
"Split windows BELOW current window
set splitbelow					

"----- Search Settings -----
" Enable search highlighting
set hlsearch
" set the search scan to wrap lines
set wrapscan
" Incrementally match the search
set incsearch
" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase



"http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
" set completeopt=longest,menuone
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"   \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"   \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'




"------ Abbreviations -----
"Load current buffer in different browsers
abbrev ff :w<cr> :! open -a firefox.app %:p<cr>
abbrev ss :w<cr> :! open -a safari.app %:p<cr>



"----- Mappings -----
"Map a change to the Desktop
nmap ,d :cd ~/Desktop<cr>:e.<cr>
"Shortcut for editing vimrc file
nmap ,ev :tabnew $MYVIMRC<cr>
"Saves time 
nmap <space> :
"Map escape to ,e
imap ,e <esc>
"Map escape key to jj -- much faster
imap jj <esc>



"Map code completion to , + tab
"imap ,<tab> <C-x><C-o>
"Shorcut for NERDTreeToggle
nmap ,nt :NERDTreeToggle<cr>
nmap bb :NERDTreeToggle<cr>

" Map CTRL-E to do what ',' used to do
nnoremap <c-e> ,
vnoremap <c-e> ,



"Automatically change current dir to that of the file in the buffer
" autocmd BufEnter * cd %:p:h


"Source the vimrc file afer modifying
if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

"----- Plugin Settings -----
"SnipMate
let g:snips_author = 'Jarrett Burningham'


"Zen Coding
"Change zen coding plugin expansion key to shift + e
let g:user_zen_expandabbr_key = ',<tab>'

"NERDTree
" Show hidden files in NerdTree
let NERDTreeShowHidden=1   
" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1
" Don't display these kinds of files
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
            \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
            \ '\.embed\.manifest$', '\.embed\.manifest.res$',
            \ '\.intermediate\.manifest$', '^mt.dep$' ]

" T-comment
"Faster shortcut for commenting. Requires T-Comment plugin
map ,c <c-_><c-_>


" FuzzyFinder Settings
nmap ,fb :FufBuffer<CR>
nmap ,ff :FufFile<CR>
nmap ,ft :FufTag<CR>


" Project FuzzyFind taken from: http://goo.gl/WjPqA
function! FufProject()
  let origcurdir = getcwd()
  let curdir = origcurdir
  let prevdir = ""
 
  while curdir != prevdir
    if filereadable(".fuzzyfinder")
      break
    endif
    cd ..
    let prevdir = curdir
    let curdir = getcwd()
  endwhile
 
  if filereadable(".fuzzyfinder")
    let items = readfile(".fuzzyfinder")
    let files = []
    for n in items
      let files += split(glob(curdir . "/" . n), "\n")
    endfor
 
    call fuf#givenfile#launch('', 0, '>', files)
  endif
endfunction

nmap ,fp :call FufProject()<CR>
nmap ff :call FufProject()<CR>
let g:fuf_maxMenuWidth = 200





"----- Fix constant spelling mistakes -----
iab teh       the
iab hte		  the
iab Hte		  The
iab Teh       The
iab taht      that
iab Taht      That
iab alos      also
iab Alos      Also
iab aslo      also
iab Aslo      Also
iab becuase   because
iab Becuase   Because
iab charcter  character
iab Charcter  Character
iab charcters characters
iab Charcters Characters
iab exmaple   example
iab Exmaple   Example
iab exmaples  examples
iab Exmaples  Examples
iab shoudl    should
iab Shoudl    Should
iab seperate  separate
iab Seperate  Separate
iab everythign	everything
iab Everythign	Everything
iab anythign	anything
iab Anythign	anything
