call plug#begin('~/.config/nvim/plug')

Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'liuchengxu/space-vim-dark'
if executable('ack')
  Plug 'mileszs/ack.vim'
endif

" 0.5
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'neovim/nvim-lspconfig'
Plug 'kassio/neoterm'

Plug 'hrsh7th/nvim-compe'
set completeopt=menuone,noselect

" telescope dependencies
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
" telescope
Plug 'nvim-telescope/telescope.nvim'

" Editorconfig
Plug 'editorconfig/editorconfig-vim'

" Langs
"Plug 'pangloss/vim-javascript'
"Plug 'elzr/vim-json'
"Plug 'othree/html5.vim'
"Plug 'leafgarland/typescript-vim'
"Plug 'ianks/vim-tsx'
"Plug 'Quramy/tsuquyomi'
Plug 'chrisbra/Colorizer'
Plug 'google/vim-jsonnet'

" Golang
"Plug 'fatih/vim-go'
"Plug 'godoctor/godoctor.vim'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'zchee/deoplete-go', {'build': {'unix': 'make'}}
"Plug 'jodosha/vim-godebug' " Debugger integration via delve

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
lua << EOF
local nvim_lsp = require("lspconfig")
nvim_lsp.gopls.setup{}
EOF


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

" Telescope bindings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Telescope bindings

" Theme
colorscheme space-vim-dark
hi Normal     ctermbg=NONE guibg=NONE
hi LineNr     ctermbg=NONE guibg=NONE
hi SignColumn ctermbg=NONE guibg=NONE
" Theme


" Tree-sitter
" tree-sitter

" neoterm
let g:neoterm_default_mod = "vert botright"
let g:neoterm_autoscroll = 1
let g:neoterm_keep_term_open = 1
" ,tg to[g]gle the terminal window
nmap     <silent> <leader>tg :Ttoggle<CR>
" ,tc [c]lear the terminal window
nmap     <silent> <leader>tc :Tclear<CR>
" ,sl [s]end [line] to REPL in terminal window
nmap     <silent> <leader>sl :TREPLSendLine<CR>
vnoremap <silent> <leader>sl :TREPLSendSelection<CR>
nmap     <silent> <leader>sf :TREPLSendFile<CR>

" Escape key
tnoremap <Esc> <C-\><C-n>


" CoC
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
