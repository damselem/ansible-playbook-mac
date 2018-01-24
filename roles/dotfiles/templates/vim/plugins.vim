set rtp+={{ vim_target_dir }}

call plug#begin('{{ vim_target_dir }}/plugged')

" General
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'
Plug 'edkolev/tmuxline.vim'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-grepper'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-surround'

" Color scheme
Plug 'altercation/vim-colors-solarized'

" Filetype
Plug 'tpope/vim-endwise'

" Filetype - Javascript
Plug 'briancollins/vim-jst',       { 'for': 'javascript' }
Plug 'pangloss/vim-javascript',    { 'for': 'javascript' }
Plug 'elzr/vim-json',              { 'for': 'json' }
Plug 'digitaltoad/vim-pug',        { 'for': 'pug' }
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }

" Filetype - Docker
Plug 'ekalinin/Dockerfile.vim', { 'for' : 'Dockerfile'}

" Filetype - Go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Filetype - Nginx
Plug 'fatih/vim-nginx', { 'for' : 'nginx' }

" Filetype - Ruby
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }

" Filetype - Python
Plug 'klen/python-mode', { 'for': 'python' }

" Add plugins to &runtimepath
call plug#end()
