vim9script

# basic setting
set mouse=a
set number
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936
# Set shift width to 4 spaces.
set shiftwidth=4
# Set tab width to 4 columns.
set tabstop=4
set showcmd
# autocomplete in ex mode, press tab 
set wildmenu

set clipboard=unnamedplus

# close quickfix list, such as after you excute :LspWorkspaceSymbols
# :cclose
# open quickfix list
# :copen

# goto previous place in jumps list, <C-o>, o mean : old
# goto next place in jumps list, <C-i>

# set xclip, Ctrl-C copy visual content to clipboard
# vnoremap <C-c> :w !xclip -selection clipboard<CR>

# ale
g:ale_linters_explicit = 1
g:ale_linters = {
	'csh': ['shell'],
	'python': ['flake8', 'mypy', 'pylint'],
	'c': ['gcc', 'cppcheck'],
	'cpp': ['gcc', 'cppcheck'],
	'text': []
}

g:ale_completion_delay = 500
g:ale_echo_delay = 20
g:ale_lint_delay = 500
g:ale_echo_msg_format = '[%linter%] %code: %%s'
g:ale_lint_on_text_changed = 'normal'
g:ale_lint_on_insert_leave = 1
g:airline#extensions#ale#enabled = 1
g:ale_c_gcc_options = '-Wall -O2 -std=c99'
g:ale_cpp_gcc_options = '-Wall -O2 -std=c++11'
g:ale_c_cppcheck_options = ''
g:ale_cpp_cppcheck_options = ''

# fzf, add to bashrc
# export FZF_DEFAULT_COMMAND="fd
# --exclude={.git,.idea,.sass-cache,node_modules,build}
# --type f"

# Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
# autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

nnoremap <leader>n :NERDTreeFocus<CR>
# nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <leader>` :ter<CR>

# lsp
nnoremap <leader>gd :LspDefinition<CR>
nnoremap <leader>ld :LspDeclaration<CR>
nnoremap <leader>lh :LspHover<CR>
nnoremap <leader>li :LspImplementation<CR>
nnoremap <leader>ls :LspDocumentSymbol<CR>
nnoremap <leader>lr :LspRename<CR>
nnoremap <leader>lf :LspDocumentFormat<CR>

# window resize
nnoremap <leader>w+ :vertical resize +30<CR>
nnoremap <leader>w- :vertical resize -30<CR>
nnoremap <leader>r+ :resize +30<CR>
nnoremap <leader>r- :resize -30<CR>

# async run
nnoremap <F5> :AsyncRun -mode=term -pos=gnome  ls -la<CR>
# :AsyncRun -mode=term -pos=tmux  ls -la

# lsp
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

# snipt
# " If you want :UltiSnipsEdit to split your window.
g:UltiSnipsEditSplit = "vertical"

# mru
# set max lenght for the mru file list
g:mru_file_list_size = 7 
# set path pattens that should be ignored
g:mru_ignore_patterns = 'fugitive\|\.git/\|\_^/tmp/' 

call plug#begin()

	Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

# fzf
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

# c++
	Plug 'dense-analysis/ale'

	Plug 'terryma/vim-multiple-cursors'
# Plug 'mg979/vim-visual-multi', {'branch': 'master'}

	Plug 'prabirshrestha/async.vim'
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'
	Plug 'mattn/vim-lsp-settings'

	Plug 'rhysd/vim-lsp-ale'

# theme
	Plug 'joshdick/onedark.vim'
	Plug 'itchyny/lightline.vim'

# edit
	Plug 'tpope/vim-surround'
	Plug 'jiangmiao/auto-pairs'

# async run
	Plug 'skywind3000/asyncrun.vim'
	Plug 'benmills/vimux'

# recent files
	Plug 'lvht/mru'

# ultisnips
	Plug 'SirVer/ultisnips'
	Plug 'thomasfaingnaert/vim-lsp-snippets'
	Plug 'thomasfaingnaert/vim-lsp-ultisnips'

call plug#end()

# set colorschema
	syntax on
	colorscheme onedark

