set nocompatible
set hlsearch
set nu
set enc=utf-8 fenc=utf-8
set autoindent smartindent
set ts=4 sw=4 sts=4
set background=dark

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' "required
Plugin 'tpope/vim-fugitive' "required
"Plugin 'tpope/vim-sensible' "not used neovim
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'fatih/vim-go'
Plugin 'python-mode/python-mode'
Plugin 'vim-ruby/vim-ruby'
Plugin 'cespare/vim-toml'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'slim-template/vim-slim.git'

call vundle#end()
filetype plugin indent on " Put your non-Plugin stuff after this line

let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=0
let g:NERDTreeWinSize=30

let g:go_term_mode = "split"
let g:go_fmt_autosave = 0

let b:ycm_largefile = 1
let g:ycm_disable_for_files_larger_than_kb = 500 
let g:ycm_goto_buffer_command = "vertical-split"

let g:pymode_folding = 0

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
"autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

map <silent> <F9> :NERDTreeToggle<CR>
map <silent> <F10> :TagbarToggle<CR>

"Bundle 'Tagbar' 
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
	\ }
