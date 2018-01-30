"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="," " Leader for Vim

set background=light " Use dark background of the colorscheme

set autowriteall " Autosave the file always
set nobackup " Don't make backups
set noswapfile " Don't use swap file

set clipboard=unnamed " Share OS X and Vim clipboard
set completeopt-=preview " Do not show omnicomplete preview window
set wildmode=list:longest,list:full " Complete files like a shell

set ignorecase " Case-insensitive searching
set smartcase " Use case-sensitive search if expression contains a capital letter

set list listchars=tab:»·,trail:· " Display extra whitespace
set number " Show line numbers
set numberwidth=5
set ruler " Show cursor position.
set showcmd " Display incomplete commands
set showmatch " Higlight matching parenthesis
set showmode " Display the mode you're in
set colorcolumn=80 " Display vertical column at 80 characters

set splitbelow " Split window below
set splitright " Split window to the right

set expandtab
set shiftwidth=2
set tabstop=2

set mouse=a "Enable mouse support

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CORE - CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:loaded_python_provider = 1 "Disable Python2 support
let g:loaded_ruby_provider = 1 "Disable Ruby support
let g:loaded_node_provider = 1 "Disable Node support
let g:python3_host_prog = "{{ ansible_env.HOME }}/.pyenv/versions/3.6.3/bin/python3"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source {{ nvim_config_dir }}/mappings.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source {{ nvim_config_dir }}/plugins.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS - CONFIGURATION
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("{{ nvim_target_dir }}/plugged/vim-colors-solarized/colors/solarized.vim"))
  colorscheme solarized
endif

" NERDTree
let g:NERDTreeQuitOnOpen = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeIgnore = ['\.DS_Store$']

" Airline
let g:airline_left_sep =''
let g:airline_right_sep =''

" Misc
let g:pymode_folding = 0
let g:SuperTabDefaultCompletionType = "context"
let g:tagbar_autoclose = 0
let g:vim_json_syntax_conceal = 0
let g:tmuxline_powerline_separators = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AUTOCOMMANDS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source {{ nvim_config_dir }}/autocmd.vim

