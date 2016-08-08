syntax on
filetype plugin indent on

set nocompatible
set number
set nowrap
set showmode
set tw=80
set smartcase
set smarttab
set smartindent
set autoindent
set softtabstop=2
set shiftwidth=2
set expandtab
set incsearch
set mouse=a
set history=1000
set clipboard=unnamedplus,autoselect
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11


set completeopt=menuone,menu,longest

set wildignore+=*\\tmp\\*,*.swp,*.swo,*.zip,.git,.cabal-sandbox
set wildmode=longest,list,full
set wildmenu
set completeopt+=longest

set t_Co=256

set cmdheight=1

let g:airline_powerline_fonts = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

nmap <C-n> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree

" ultisnips
"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ryanoasis/vim-devicons'

Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'easymotion/vim-easymotion'
Plugin 'raimondi/delimitmate'
Plugin 'valloric/youcompleteme'
Plugin 'honza/vim-snippets'
Plugin 'sirver/ultisnips'
Plugin 'kien/ctrlp.vim'
Plugin 'elzr/vim-json'
Plugin 'junegunn/vim-easy-align'
Plugin 'marijnh/tern_for_vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-leiningen'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-vinegar'
Plugin 'pangloss/vim-javascript'
Plugin 'Wolfy87/vim-syntax-expand'


call vundle#end()            " required

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Color scheme
"
set background=dark
" colorscheme solarized

let g:javascript_plugin_flow = 1
" set foldmethod=syntax

" Map the conceal characters to their expanded forms (only for javascript files)
autocmd FileType javascript inoremap <silent> <buffer> @ <C-r >= syntax_expand#expand("@", "this")<CR>
autocmd FileType javascript inoremap <silent> <buffer> # <C-r >= syntax_expand#expand("#", ".prototype.")<CR>
autocmd FileType javascript inoremap <silent> <buffer> < <C-r >= syntax_expand#expand_head("<", "return")<CR>
"
" " Keeps everything concealed at all times. Even when my cursor is on the word.
set conceallevel=1
set concealcursor=nvic
"
" " JavaScript thanks to pangloss/vim-javascript
let g:javascript_conceal_function                              = "λ"
let g:javascript_conceal_this                                  = "@"
let g:javascript_conceal_return                                = "<"
let g:javascript_conceal_prototype                             = "#"
let g:javascript_conceal_null                                  = "ø"
let g:javascript_conceal_undefined                             = "¿"
let g:javascript_conceal_NaN                                   = "ℕ"
let g:javascript_conceal_static                                = "•"
let g:javascript_conceal_super                                 = "Ω"
let g:javascript_conceal_arrow_function                        = "⇒"


