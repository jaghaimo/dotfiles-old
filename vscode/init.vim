" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" yank and paste with the system clipboard
set clipboard=unnamedplus

" space as a leader
map <Space> <Leader>

" fix Y shortcut (behave like C or D)
map Y y$

" mappings
nmap <silent> <leader>q :q<CR>
nmap <silent> <leader>s :w<CR>
nmap <silent> <leader>w :noa w<CR>

" vscode undo
if exists('g:vscode')
    nnoremap <silent> u :<C-u>call VSCodeNotify('undo')<CR>
    nnoremap <silent> <C-r> :<C-u>call VSCodeNotify('redo')<CR>
endif
