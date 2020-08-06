
call plug#begin()

Plug 'godlygeek/tabular'
Plug 'stephpy/vim-yaml'
Plug 'plasticboy/vim-markdown'
Plug 'mattn/emmet-vim'


Plug 'morhetz/gruvbox', {'as' : 'gruvbox'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

Plug 'junegunn/rainbow_parentheses.vim'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'autozimu/LanguageClient-neovim', {
	\ 'branch' : 'next',
	\ 'do' : 'bash install.sh',
	\ }
Plug 'ap/vim-css-color'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'prettier/vim-prettier', {'do' : 'yarn install'}

Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-hindent'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'cespare/vim-toml'

call plug#end()

set shiftwidth=4
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

augroup autoformat_settings
	autocmd FileType python AutoFormatBuffer yapf
	autocmd FileType rust AutoFormatBuffer rustfmt
augroup END


hi Normal guibg=NONE ctermbg=NONE
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'python' : ['/usr/local/bin/pyls'],
    \ 'haskell' : ['hie-wrapper', '--lsp'],
    \ 'cpp' : ['clangd'],
    \ }

let g:rustfmt_autosave = 1
let g:prettier#autoformat = 1


let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-json',
    \ ]


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


map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1