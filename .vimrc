" General Settings
set nocompatible                 " Disable compatibility mode for Vi
set backspace=indent,eol,start   " Allow backspace in insert mode
set history=1000                 " Increase command history size
set ruler                        " Show cursor position in the status line
set encoding=utf-8               " Set file encoding to UTF-8
set fileencoding=utf-8           " Default file encoding
set showcmd                      " Display incomplete commands
set wildmenu                     " Enhanced command-line completion
set hlsearch                     " Highlight search results
set incsearch                    " Incremental search
set ignorecase                   " Case-insensitive search
set smartcase                    " Enable case-sensitive search if uppercase is used
set number                       " Show line numbers
set numberwidth=5                " Show line numbers column width
set relativenumber               " Show relative line numbers
set scrolloff=8                  " Keep 8 lines visible around the cursor
set sidescrolloff=8              " Keep 8 columns visible around the cursor
set clipboard=unnamedplus        " Use system clipboard
set mouse=a                      " Enable mouse support

" File Management
set autoread                     " Auto-reload files if modified outside Vim
set autowrite                    " Auto-save before certain commands
set backup                       " Enable backup files
set backupdir=~/.vim/backup//    " Set backup directory
set undofile                     " Enable persistent undo
set undodir=~/.vim/undo//        " Set undo file directory
set swapfile                     " Enable swap files
set directory=~/.vim/swap//      " Set swap file directory

" Appearance
set showmode                     " Show mode (insert, visual, etc.)
set laststatus=2                 " Always display the status line
set cursorline                   " Highlight the current line
set cursorcolumn                 " Highlight the current column
set termguicolors                " Enable true color support
set background=dark              " Set dark or light background
set colorcolumn=80               " Highlight column at 80 characters
set wrap                         " Enable line wrapping
set linebreak                    " Avoid breaking words on wrap
set list                         " Show tabs and trailing spaces
set listchars=tab:»·,trail:·,extends:>,precedes:< " Customize list characters

" Tabs and Indentation
set expandtab                    " Use spaces instead of tabs
set shiftwidth=4                 " Number of spaces for auto-indentation
set tabstop=4                    " Number of spaces a tab counts for
set softtabstop=4                " Number of spaces for <Tab>/<BS> in insert mode
set autoindent                   " Copy indentation from previous line
set smartindent                  " Auto-indent new lines

" Performance
set lazyredraw                   " Improve performance for macros and scripts
set ttyfast                      " Optimize for fast terminal
set timeoutlen=500               " Reduce timeout for mapped sequences
set updatetime=300               " Faster update for swap file and CursorHold

" Folding
set foldmethod=syntax            " Use syntax-based folding
set foldlevel=99                 " Open all folds by default
set foldenable                   " Enable code folding

" Plugins
" If you use plugins like vim-plug, you can specify settings for them as follows:

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'airblade/vim-gitgutter'
call plug#end()

" Custom Key Mappings
nnoremap <leader>w :w<CR>        " Map <leader>w to save
nnoremap <leader>q :q<CR>        " Map <leader>q to quit
vnoremap < <gv                   " Maintain selection after dedent
vnoremap > >gv                   " Maintain selection after indent

" Filetype Detection
filetype plugin indent on        " Enable filetype-specific settings
syntax on                        " Enable syntax highlighting
