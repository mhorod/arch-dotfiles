
call plug#begin()
Plug 'godlygeek/tabular'


" Syntax
Plug 'chiel92/vim-autoformat'
Plug 'stephpy/vim-yaml'
Plug 'plasticboy/vim-markdown'
Plug 'mattn/emmet-vim'
Plug 'cespare/vim-toml'

" UI
Plug 'morhetz/gruvbox', {'as' : 'gruvbox'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'

" NerdTree
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-repeat'

" Parentheses related
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'
Plug 'townk/vim-autoclose'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'autozimu/LanguageClient-neovim', {
	\ 'branch' : 'next',
	\ 'do' : 'bash install.sh',
	\ }

" Google code formatting libraries
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

Plug 'prettier/vim-prettier', {'do' : 'yarn install'}

" Haskell
Plug 'neovimhaskell/haskell-vim'

" Elm
Plug 'elm-tooling/elm-vim' 
Plug 'andys8/vim-elm-syntax'

Plug 'HerringtonDarkholme/yats.vim' " TypeScript
Plug 'rhysd/vim-clang-format' " C++

Plug 'OmniSharp/omnisharp-vim' "C#

Plug  'FredKSchott/CoVim' "Liveshare
call plug#end()
call glaive#Install()

" Editor presets

set tabstop=2
set shiftwidth=2
set expandtab

set autoindent
set smartindent
set termguicolors
set nohlsearch
set incsearch
set hidden
set number
set cursorline


set colorcolumn=80
colorscheme gruvbox
let g:airline_powerline_fonts = 1
syntax on
filetype on

augroup autoformat_settings
    autocmd FileType c,cpp ClangFormatAutoEnable
    autocmd FileType python AutoFormatBuffer yapf
    autocmd FileType rust AutoFormatBuffer rustfmt
    autocmd FileType java AutoFormatBuffer java-format
augroup END

au BufRead,BufNewFile *.cppm set ft=cpp
au BufRead,BufNewFile *.fish set ft=sh


hi Normal guibg=NONE ctermbg=NONE
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'python' : ['/usr/local/bin/pyls'],
    \ 'haskell' : ['hie-wrapper', '--lsp'],
    "\ 'cpp' : ['clangd'],
    \ }
autocmd FileType c,cpp ClangFormatAutoEnable
let g:rustfmt_autosave = 1
let g:prettier#autoformat = 1
let g:elm_format_autosave = 1

let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-json',
    \ ]

" Enable parentheses coloring
let g:rainbow_active = 1

noremap <F3> :Autoformat<CR>
nmap <C-p> :CocCommand prettier.formatFile

inoremap <silent><expr> <C-space> coc#refresh()
" Rename
nmap <silent> <F2> <Plug>(coc-rename)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <C-h> :CocCommand clangd.switchSourceHeader<CR>

" Moving lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Alternative Escape + prevent moving cursor back
inoremap jk <Esc>l
inoremap <Esc> <Esc>l

nmap <Up> <Nop>
nmap <Down> <Nop>
nmap <Left> <Nop>
nmap <Right> <Nop>

" NerdTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1


let g:clang_cpp_options = '-std=c++17'
" Clang formatter style
let g:clang_format#style_options = {
  \ "AccessModifierOffset" : -2,
  \ "AllowShortBlocksOnASingleLine" : "true",
  \ "AllowShortIfStatementsOnASingleLine" : "WithoutElse",
  \ "AlwaysBreakTemplateDeclarations" : "true",
  \ "Standard" : "C++11",
  \ "BreakBeforeBraces" : "Allman",
  \ "AlignAfterOpenBracket": "AlwaysBreak"}


