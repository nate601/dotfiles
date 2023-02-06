call plug#begin('~/.local/share/nvim/plugged')

" Autocomplete for surround
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'mhinz/vim-signify'
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
" Plug 'ctrlpvim/ctrlp.vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"" omnisharp
Plug 'OmniSharp/Omnisharp-vim', {'for':['cs', 'csx']}
Plug 'dense-analysis/ale'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'puremourning/vimspector'

" Intellisense
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
Plug 'yami-beta/asyncomplete-omni.vim'

" Poly glot
Plug 'sheerun/vim-polyglot'

Plug 'mattn/emmet-vim'

" " WakaTime
" Plug 'wakatime/vim-wakatime'
" Pandoc

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-rmarkdown'


Plug 'mbajobue/scim-latex-tables'

Plug 'lervag/vimtex'

Plug 'gioele/vim-autoswap'

" Better commit buffers
Plug 'rhysd/committia.vim'
Plug 'whiteinge/diffconflicts'
" Underline cursor word
Plug 'itchyny/vim-cursorword'
" Underline unique letters
Plug 'unblevable/quick-scope'

Plug 'junegunn/goyo.vim'

Plug 'mhinz/vim-startify'
Plug 'wincent/loupe'
" Plug 'liuchengxu/vim-which-key'
Plug 'folke/which-key.nvim'
" Plug 'RRethy/vim-hexokinase', {'do': 'make hexokinase'}


Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'

Plug 'jpalardy/vim-slime'

Plug 'machakann/vim-highlightedyank'
Plug 'dart-lang/dart-vim-plugin'

Plug 'AndrewRadev/tagalong.vim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/nvim-bufferline.lua'

Plug 'luochen1990/rainbow'

Plug 'dhruvasagar/vim-table-mode'
Plug 'ryanoasis/vim-devicons'

" Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'dstein64/vim-startuptime'
Plug 'junegunn/vim-peekaboo'

Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'tools-life/taskwiki'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'farseer90718/vim-taskwarrior'

Plug 'MunifTanjim/nui.nvim'
Plug 'folke/noice.nvim'

call plug#end()

lua require("noice").setup()

colorscheme dracula

let g:rainbow_active=1

"Omnisharp config
so ~/.config/nvim/omnisharpConfig.vim

" C-p config
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']



" let g:which_key_map = {}

" let g:which_key_map['b'] = {
"             \ 'name' : '+buffers',
"             \ 'n' : ['<leader>bn', 'next-buffer'],
"             \ 'p' : ['<leader>bp', 'prev-buffer'],
"             \ 'd' : ['<leader>bd', 'delete-buffer'],
"             \ 's' : ['<leader>bs', 'vertical-split'],
"             \}
            
let g:ale_linters ={
            \ 'cs': ['OmniSharp'],
            \ 'text': ['vale', 'alex', 'languagetool'],
            \}
let g:ale_linters_ignore ={'rust':['cargo', 'rls', 'rustc']}


" nnoremap <silent> <leader> :WhichKey '\'<CR>
" call which_key#register('\', "g:which_key_map") 



autocmd FileType md nnoremap <leader> fr :!pandoc % -f markdown -t latex -o %.pdf<CR>

"Advance to next tag
autocmd FileType html nnoremap <leader><tab> f>a

inoremap jk <Esc>

nnoremap <space> za

inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
nnoremap <C-l> :set spell!<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bs :buffers<CR>:vert sb 
nnoremap <leader>bb <cmd>Telescope buffers<cr>

cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

nnoremap <C-g> :Goyo<CR>
let g:airline#extensions#tabline#enabled = 1

let g:slime_target = "kitty"

let g:vimtex_view_method = "zathura"
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
let g:tex_conceal='abdmg'



"
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

nmap <Leader>dd  <Plug>VimspectorToggleBreakpoint
nmap <Leader>dD  <Plug>VimspectorToggleConditionalBreakpoint
nmap <Leader>d<space>  <Plug>VimspectorContinue
nmap <Leader>de  <Plug>VimspectorReset
nmap <Leader>drt <Plug>VimspectorRunToCursor
nmap <Leader>di <Plug>VimspectorBalloonEval

" \db = Toggle Breakpoint
" \dB Toggle Conditional Breakpoint
" \dd = Contineue
" \de Reset
" \drt Run to cursor
" \di inspect variable

"\fg = GoTo Definition
"\ft = Type Lookup
"\fd = View Documentation
"\fdd = Preview Definition
"\fi = view implentations
"\<space> = View Code Actions
"\fr = Rename
"\ff = Code Format

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
  endfunction

  " Insert <tab> when previous text is space, refresh completion if not.
  inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()
  inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

  
  inoremap <silent><expr> <TAB>
    \ coc#pum#visible() ? coc#_select_confirm() :
    \ coc#expandableOrJumpable() ?
    \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  let g:coc_snippet_next = '<tab>'


function! ShowDocumentation()
    if CocAction('hasProvider', 'hover')
            call CocActionAsync('doHover')
              else
                      call feedkeys('K', 'in')
                        endif
                    endfunction

                    autocmd CursorHold * silent call CocActionAsync('highlight')

nnoremap <leader><space> <Plug>(coc-codeaction-cursor)


nmap <leader>fg <Plug>(coc-definition)
nmap <leader>ft <Plug>(coc-type-definition)
nmap <leader>fd :call ShowDocumentation()<CR>
"preview definitionj
nmap <leader>fi <Plug>(coc-implementation)
nmap <leader><space> <Plug>(coc-codeaction-line)
xmap <leader><space> <Plug>(coc-codeaction-selected)
nmap <leader>f<space> <Plug>(coc-codeaction-cursor)
nmap <leader>fr <Plug>(coc-rename)
nmap <leader>ff :call CocActionAsync('format')<CR>

nnoremap <c-p> <cmd>Telescope git_files<cr>

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

