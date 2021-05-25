source ~/.config/nvim/plugins.vim

syntax on
filetype plugin indent on

set termguicolors
autocmd CursorHold * silent call CocActionAsync('highlight')

" To open a new empty buffer
nmap <leader>bn :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>:b<space>

set clipboard=unnamed " [y]ank and [p]aste use system clipboard
set hidden " buffers can be hidden if they've been modified

set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

" Allows you to undo even after you closed the file and reopened it
if !isdirectory($HOME . "/.cache/nvim/undodir")
    call mkdir($HOME . "/.cache/nvim/undodir", "p")
endif
set undofile
set undodir=~/.cache/nvim/undodir
" Cleans the undofile every 90 days so it doesn't get hugeeeee
let s:undos = split(globpath(&undodir, '*'), "\n")
call filter(s:undos, 'getftime(v:val) < localtime() - (60 * 60 * 24 * 90)')
call map(s:undos, 'delete(v:val)')
