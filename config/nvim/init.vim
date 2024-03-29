:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
Plug 'itchyny/lightline.vim'
Plug 'shaunsingh/nord.nvim'
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'romgrk/barbar.nvim'
call plug#end()

let NERDTreeShowHidden=1

nnoremap <C-z> :wq!<CR>
nnoremap <C-s> :w!<CR>
imap jj <Esc>

" NERDTree options
nnoremap <C-t> :NERDTreeToggle<CR><C-w>l
nnoremap <C-f> :NERDTreeFind<CR>

" BARBAR OPTIONS 
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
" Pin/unpin tab
nnoremap <silent>    <A-p> <Cmd>BufferPin<CR>
" Close tab
nnoremap <silent>    <A-c> <Cmd>BufferClose<CR>

colorscheme nord
