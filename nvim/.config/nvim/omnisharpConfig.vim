let g:OmniSharp_timeout = 5

let g:OmniSharp_server_stdio = 1

let g:OmniSharp_highlighting = 3
let g:OmniSharp_highlight_types = 3

let g:OmniSharp_want_snippet = 1

let g:OmniSharp_selector_ui = 'ctrlp'  " Use ctrlp.vim

" let g:OmniSharp_server_use_mono = 1

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
        \ 'name': 'ultisnips',
        \ 'whitelist': ['*'],
        \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
        \ }))

call asyncomplete#register_source(asyncomplete#sources#omni#get_source_options({
                \ 'name': 'omni',
                \ 'allowlist': ['*'],
                \ 'blocklist': ['c', 'cpp', 'html'],
                \ 'completor': function('asyncomplete#sources#omni#completor'),
                \ 'config': {
                \   'show_source_kind': 1
                \ }
                \ }))


let g:ale_linters ={
            \ 'cs': ['OmniSharp']
            \}
set completeopt=menuone,noinsert,noselect,preview

" Set desired preview window height for viewing documentation.
set previewheight=5

" autocmd CursorHold *.cs call OmniSharp#actions#documentation#TypeLookup()

"\fg = GoTo Definition
"\ft = Type Lookup
"\fdd = Preview Definition
"\fd = View Documentation
"\fi = view implentations
"\<space> = View Code Actions
"\fr = Rename
"\ff = Code Format
"
autocmd FileType cs nnoremap <buffer> <leader>fg :OmniSharpGotoDefinition<CR>
autocmd FileType cs nnoremap <buffer> <leader>ft :OmniSharpTypeLookup<CR>
autocmd FileType cs nmap <silent> <buffer> <Leader>fdd <Plug>(omnisharp_preview_definition)

autocmd FileType cs nnoremap <buffer> <leader>fd :OmniSharpDocumentation<CR>

autocmd FileType cs nmap <silent> <buffer> <leader>fi <Plug>(omnisharp_preview_implementations)

autocmd FileType cs nnoremap <leader><Space> :OmniSharpGetCodeActions<CR>
autocmd FileType cs xmap <silent> <buffer> <Leader><Space> <Plug>(omnisharp_code_actions)
autocmd FileType cs nnoremap <leader>fr :OmniSharpRename<CR>
autocmd FileType cs nmap <silent> <buffer> <Leader>fcc <Plug>(omnisharp_global_code_check)
autocmd FileType cs nnoremap <leader>ff :OmniSharpCodeFormat<CR>
autocmd FileType cs nnoremap ;; A;<Esc>
autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>
autocmd FileType cs nmap <buffer> [[ <Plug>(omnisharp_navigate_up)
autocmd FileType cs nmap <buffer> ]] <Plug>(omnisharp_navigate_down)
autocmd FileType cs let b:dispatch = 'dotnet run'
