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
    " go to symbol
    nnoremap gs <Cmd>call VSCodeNotify('workbench.action.showAllSymbols', { 'query': expand('<cword>')})<CR>
    " quick fix
    nnoremap ga <Cmd>call VSCodeNotify('editor.action.quickFix')<CR>
    " go to file
    nnoremap gf <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
    " show all commands
    nnoremap gp <Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>
    nnoremap <leader>p <Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>
    " find selected word in files
    nnoremap <leader>f <Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>
    " vscode undo and redo
    nnoremap <silent> u <Cmd>call VSCodeNotify('undo')<CR>
    nnoremap <silent> <C-r> <Cmd>call VSCodeNotify('redo')<CR>
endif
