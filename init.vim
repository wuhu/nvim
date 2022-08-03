call plug#begin()
Plug 'github/copilot.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'neomake/neomake'
Plug 'ayu-theme/ayu-vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
call plug#end()

set termguicolors     " enable true colors support
let ayucolor="light"  " for light version of theme
colorscheme ayu

" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

let g:neomake_python_enabled_makers = ['pylint']

call neomake#configure#automake('nrwi', 500)
set number

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

