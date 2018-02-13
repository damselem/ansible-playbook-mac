set rtp+={{ nvim_target_dir }}

call plug#begin('{{ nvim_target_dir }}/plugged')

" General
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

" Color scheme
Plug 'altercation/vim-colors-solarized'

" Completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Filetype
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-endwise'

" Filetype - Javascript
Plug 'elzr/vim-json', { 'for': 'json' }

" Filetype - Docker
Plug 'ekalinin/Dockerfile.vim', { 'for' : 'Dockerfile'}

" Filetype - Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Filetype - Ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

" Filetype - Python
Plug 'klen/python-mode', { 'for': 'python' }

" Filetype - Terraform
Plug 'hashivim/vim-terraform', { 'for': 'terraform' }

" Add plugins to &runtimepath
call plug#end()
