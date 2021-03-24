call plug#begin('~/.config/nvim/plug')

Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
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
Plug 'chrisbra/Colorizer'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

" Golang
Plug 'fatih/vim-go'
Plug 'godoctor/godoctor.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
Plug 'jodosha/vim-godebug' " Debugger integration via delve

call plug#end()


let g:deoplete#enable_at_startup = 1
set tabstop=4
set shiftwidth=4
set expandtab

let g:loaded_python_provider = 0

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
