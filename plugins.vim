call plug#begin()

source ~/.config/nvim/plug-conf/coc.vim
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mhinz/vim-signify' " git gutter
set updatetime=100
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1
Plug 'jreybert/vimagit' " loads of git stuff
nmap <space>g :Magit<cr>
Plug 'tpope/vim-fugitive' " git blame
Plug 'tpope/vim-commentary'
" `gcc` to comment one line
" " `gc` selected in vi mode
" " `gcap` comment a paragraph
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround' " doubles up surround chars eg () []
Plug 'tpope/vim-sensible'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-repeat' " let . repeat things plugins added (load last)

" syntax highlighting stuff
Plug 'HerringtonDarkholme/yats.vim' " TS
set re=0
Plug 'pangloss/vim-javascript' " JS
let g:javascript_plugin_jsdoc = 1
augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" CSS2
Plug 'hail2u/vim-css3-syntax' " CSS3
Plug 'elzr/vim-json' " JSON

source ~/.config/nvim/plug-conf/startify.vim
Plug 'patstockwell/vim-monokai-tasty'
source ~/.config/nvim/plug-conf/airline.vim

call plug#end()
