call plug#begin('~/.local/share/nvim/plugged')

" Autocomplete for surround
Plug 'tpope/vim-surround'
" Git
Plug 'tpope/vim-fugitive'
" Dispatch Buiolds
Plug 'tpope/vim-dispatch'
" Autocomment
Plug 'tpope/vim-commentary'
" Move quickly using <Leader><Leader> and movement commands
Plug 'easymotion/vim-easymotion'
" Smooth movement
Plug 'psliwka/vim-smoothie'
" Prettier status line
Plug 'vim-airline/vim-airline'
" Skin
Plug 'dracula/vim', { 'as': 'dracula' }
" C-p
Plug 'ctrlpvim/ctrlp.vim'
" omnisharp
Plug 'OmniSharp/Omnisharp-vim', {'for':['cs', 'csx']}
Plug 'dense-analysis/ale'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Intellisense
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
Plug 'yami-beta/asyncomplete-omni.vim'

" Poly glot
Plug 'sheerun/vim-polyglot'

Plug 'mattn/emmet-vim'

" WakaTime
Plug 'wakatime/vim-wakatime'
" Pandoc

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'

Plug 'mipmip/vim-scimark'
Plug 'gioele/vim-autoswap'

" Better commit buffers
Plug 'rhysd/committia.vim'
Plug 'whiteinge/diffconflicts'
" Underline cursor word
Plug 'itchyny/vim-cursorword'

Plug 'voldikss/vim-floaterm'

Plug 'junegunn/goyo.vim'

Plug 'mhinz/vim-startify'
Plug 'wincent/loupe'
Plug 'liuchengxu/vim-which-key'


call plug#end()

colorscheme dracula

"Omnisharp config
so ~/.config/nvim/omnisharpConfig.vim

" C-p config
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

nnoremap <silent> <leader> :WhichKey '\'<CR>

autocmd FileType md nnoremap <leader> fr :!pandoc % -f markdown -t latex -o %.pdf<CR>

"Advance to next tag
autocmd FileType html nnoremap <leader><tab> f>a

inoremap jk <Esc>

nnoremap <space> za

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
inoremap <C-k> <c-g>u<Esc>[sz=`]a<c-g>u
nnoremap <C-l> :set spell!<CR>

nnoremap <C-g> :Goyo<CR>
let g:airline#extensions#tabline#enabled = 1

let g:floaterm_keymap_toggle = '<M-;>'
let g:floaterm_gitcommit = 'floaterm'



set splitbelow
set splitright




set hidden

set nobackup
set nowritebackup

set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes



set number relativenumber
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell

set hlsearch
set ignorecase
set incsearch

set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set expandtab

set ruler

set undolevels=1000
set backspace=indent,eol,start

