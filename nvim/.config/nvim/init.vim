call plug#begin('~/.local/share/nvim/plugged')

" Autocomplete for surround
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
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

Plug 'puremourning/vimspector', {'for':['cs']}

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
" Underline unique letters
Plug 'unblevable/quick-scope'

Plug 'voldikss/vim-floaterm'

Plug 'junegunn/goyo.vim'

Plug 'mhinz/vim-startify'
Plug 'wincent/loupe'
Plug 'liuchengxu/vim-which-key'
Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase'}


Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'

Plug 'jpalardy/vim-slime'


call plug#end()

colorscheme dracula

"Omnisharp config
so ~/.config/nvim/omnisharpConfig.vim

" C-p config
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']


let g:which_key_map = {}

let g:which_key_map['b'] = {
            \ 'name' : '+buffers',
            \ 'n' : ['<leader>bn', 'next-buffer'],
            \ 'p' : ['<leader>bp', 'prev-buffer'],
            \ 'd' : ['<leader>bd', 'delete-buffer'],
            \ 's' : ['<leader>bs', 'vertical-split'],
            \}
            


nnoremap <silent> <leader> :WhichKey '\'<CR>
call which_key#register('\', "g:which_key_map") 


autocmd FileType md nnoremap <leader> fr :!pandoc % -f markdown -t latex -o %.pdf<CR>

"Advance to next tag
autocmd FileType html nnoremap <leader><tab> f>a

inoremap jk <Esc>

nnoremap <space> za

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
inoremap <C-k> <c-g>u<Esc>[sz=`]a<c-g>u
nnoremap <C-l> :set spell!<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bs :buffers<CR>:vert sb 

nnoremap <C-g> :Goyo<CR>
let g:airline#extensions#tabline#enabled = 1

let g:floaterm_keymap_toggle = '<M-;>'
let g:floaterm_gitcommit = 'floaterm'

let g:slime_target = "kitty"


"
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

autocmd FileType cs nmap <Leader>db  <Plug>VimspectorToggleBreakpoint
autocmd FileType cs nmap <Leader>dB  <Plug>VimspectorToggleConditionalBreakpoint
autocmd FileType cs nmap <Leader>dd  <Plug>VimspectorContinue
autocmd FileType cs nmap <Leader>de  <Plug>VimspectorReset
autocmd FileType cs nmap <Leader>drt <Plug>VimspectorRunToCursor

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

