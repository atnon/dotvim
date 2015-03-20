syntax on
" set filetype=java

set hlsearch
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set foldmethod=marker
set background=dark
set wrap
set expandtab
filetype plugin indent on
set textwidth=0
map <F2> :w!<CR>
map <F9> :! gcc -Wall -o %< %<CR>
map <F10> :! ./%<<CR>

au BufEnter,BufRead     *.inc   setf php
au BufEnter,BufRead     *.tpl   setf php
au BufNewFile,BufRead   *.tpl setf php
au BufNewFile,BufRead   *.inc setf php
set mouse=a
set number
set autoindent
set ttymouse=xterm2
imap � <Esc>

map � <Esc>
" filetype on
" for C-like programming, have automatic indentation:
autocmd FileType c,cpp,slang,php set cindent

" This function determines, wether we are on the start of the line text
" if we want to try autocompletion
function InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

" Remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
set list
set listchars=tab:>-,trail:-
set showmode                    " always show command or insert mode
set ruler
set showmatch
set whichwrap=b,s,<,>,[,]

let &colorcolumn=join(range(81,999),",")

" The completion dictionary is provided by Rasmus:
" http://lerdorf.com/funclist.txt
set dictionary-=~/funclist.txt dictionary+=~/funclist.txt
" Use the dictionary completion
set complete-=k complete+=k
" More common in PEAR coding standard
" inoremap  { {<CR>}<C-O>O
" Maybe this way in other coding standards
" inoremap  { <CR>{<CR>}<C-O>O


" Standard mapping after PEAR coding standard

" Maybe this way in other coding standards
" inoremap ( ( )<LEFT><LEFT>


"; i command mode ger ; i slutet p� raden
" noremap ; :s/\([^;]\)$/\1;/<cr>


" Colorscheme
"colorscheme elflord
let g:zenburn_high_Contrast=1
colorscheme zenburn

" Disable phpdoc
let g:foo_DefineAutoCommands = 0
