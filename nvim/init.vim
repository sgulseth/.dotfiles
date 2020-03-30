call plug#begin('~/.config/nvim/plug')

Plug 'scrooloose/nerdtree'
Plug 'liuchengxu/space-vim-dark'
Plug 'ctrlpvim/ctrlp.vim'
if executable('ack')
  Plug 'mileszs/ack.vim'
endif

" Langs
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'Quramy/tsuquyomi'

call plug#end()


" Nerdtree bindings
nnoremap <silent> <C-b> :NERDTreeToggle<CR>
"augroup nerdtree_open
"    autocmd!
"    autocmd VimEnter * NERDTree | wincmd p
"augroup END
" Nerdtree bindings



" Theme
colorscheme space-vim-dark
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
" Theme
