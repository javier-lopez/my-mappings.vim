" ============================================================================
" File:        my-mappings.vim.vim
" Description: default global vim settings
" Maintainer:  Javier Lopez <m@javier.io>
" ============================================================================

"if exists('g:loaded_my_vim_mappings') || &cp
  "finish
"endif

"let g:loaded_my_vim_mappings = 1

"=== Ctrl Mappings===
"windows
noremap  <c-k> <c-w>k
noremap  <c-j> <c-w>j
noremap  <c-l> <c-w>l
noremap  <c-h> <c-w>h
inoremap <c-k> <esc><c-w>k
inoremap <c-j> <esc><c-w>j
inoremap <c-l> <esc><c-w>l
inoremap <c-h> <esc><c-w>h

"tabs
map <c-t> <esc>:tabnew<cr>
map <c-tab> :tabnext<cr>
map <c-s-tab> :tabprevious<cr>
map [6^ :tabnext<cr>
map [5^ :tabprevious<cr>
map <c-w> :tabclose <cr>

"exit
map <c-x> :confirm qall<cr>

"=== Leader Mappings(,)==
let mapleader = ","

"m'ake
map <silent> <leader>m :make<cr>

"toggle numbering
map <silent> <leader>1 :set number!<cr>

"reload ~/.vimrc
map <leader>r :source $MYVIMRC<cr>

"resize windows
noremap <silent><leader>< :vertical resize -1<cr>
noremap <silent><leader>> :vertical resize +1<cr>
noremap <silent><leader>+ :resize +1<cr>
noremap <silent><leader>- :resize -1<cr>

"clear highlighted searches
nmap <silent> <leader>/   :nohlsearch<cr>
nnoremap <silent> <c-l> :<c-u>nohlsearch<cr><c-l>

"use the repeat operator with a visual selection
vnoremap <leader>. :normal .<cr>

"repeat a macro on a visual selection of lines
vnoremap <leader>@ :normal @

"=== Tab Mappings ===
map <tab>c :cc<cr>
map <tab>n :cnext<cr>
map <tab>p :cprevious<cr>
"move between buffers
map <tab><space> :bnext<cr>

"=== Misc Mappings===
"let's switch these
nnoremap ' `
nnoremap ` '

"<esc> isn't really confortable, be carefull when pasting stuff
inoremap jj <esc>

"insert spaces in normal mode
noremap <space> i <esc>

"use <backspace> for deleting visual selections
xnoremap <bs> d
snoremap <bs> <bs>i

"edit at the end of the word
map e ea

"make Y consistent with D and C
nnoremap Y y$

"automatically jump to end of text you pasted
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

"quit and save faster
noremap zz :q!<cr>
noremap ss :w<cr>
noremap SS :%!sudo tee > /dev/null %<cr>

"execute current line, only vim scripting
"TODO: add support for other langs
"nnoremap ygl :<C-u><C-r>=getline('.')<cr><cr>
"ZZ :wq!

"overwrite these annoying commands
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
"cabbr W w
cabbr Q q
cabbr Q q
cabbr wQ wq
cabbr WQ wq
cabbr Wq wq
noremap <home> ^
noremap <end>  $

"this will work only in the gui version, most terminals are unable
"to determinate differences between <home> and <m-home>
noremap <m-home> gg
noremap <m-end>  G
