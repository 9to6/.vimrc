set nocompatible
set hlsearch
set nu
set enc=utf-8 fenc=utf-8
set autoindent smartindent
set ts=4 sw=4 sts=4
set background=dark

"disable ESC

"VIM Visual Block
hi Visual ctermbg=255 guibg=#B2FFE0

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' "required
Plugin 'tpope/vim-fugitive' "required
Plugin 'tpope/vim-sensible' "not used neovim
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic' "not used neovim

Plugin 'nathanaelkane/vim-indent-guides'
"Plugin 'fatih/vim-go'
Plugin 'python-mode/python-mode'
Plugin 'vim-ruby/vim-ruby'
Plugin 'cespare/vim-toml'
"Plugin 'nsf/gocode', {'rtp': 'vim/'}
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'majutsushi/tagbar'
Plugin 'slim-template/vim-slim.git'
Plugin 'Chiel92/vim-autoformat'
Plugin 'KurtPreston/vim-autoformat-rails'
"Plugin 'posva/vim-vue'
"Plugin 'keith/swift.vim'
"Plugin 'leafgarland/typescript-vim'
"Plugin 'rhysd/vim-crystal'
"Plugin 'tomlion/vim-solidity'

call vundle#end()
filetype plugin indent on " Put your non-Plugin stuff after this line

let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=1
let g:NERDTreeWinSize=30

let g:go_term_mode = "split"
let g:go_fmt_autosave = 0

let b:ycm_largefile = 1
let g:ycm_disable_for_files_larger_than_kb = 500 
let g:ycm_goto_buffer_command = "vertical-split"

"let g:pymode_lint_on_write = 0
"let g:ycm_show_diagnostics_ui = 0

let g:pymode_folding = 0 
let g:pymode_options_colorcolumn = 0 
let g:pymode_doc = 0 
let g:pymode_lint_ignore = "E501,W404"
"let g:pymode_rope = 0
"let g:pymode_rope_lookup_project = 0
"let g:pymode_rope_complete_on_dot = 0
"let g:pymode_rope_autoimport = 0
"let g:pymode_rope_regenerate_on_write = 0
"set completeopt-=preview

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype erb setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype crystal setlocal ts=2 sts=2 sw=2
"autocmd Filetype vue setlocal ts=2 sts=2 sw=2
autocmd FileType vue set tabstop=2|set shiftwidth=2|set expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
"autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

"noremap <F3> :Autoformat<CR>
map <silent> <F3> :Autoformat<CR>
map <silent> <F9> :NERDTreeToggle<CR>
map <silent> <F10> :TagbarToggle<CR>
" Make `jj` and `jk` throw you into normal mode
inoremap jj <esc>
inoremap jk <esc>
