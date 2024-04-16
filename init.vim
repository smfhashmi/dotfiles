set termguicolors " use true colors in the terminal

" >>>>>>>>>>>>>>>>>>>>		PLUGINS {{{
call plug#begin('~/.config/nvim/plugged')
" Make sure you use single quotes
Plug 'KabbAmine/zeavim.vim'
Plug 'bling/vim-airline' " awesome status bar
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'dyng/ctrlsf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
Plug 'Keithbsmiley/investigate.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'maksimr/vim-jsbeautify'
Plug 'matchit.zip'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree' " file browser
Plug 'scrooloose/syntastic'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tomasr/molokai' " colorscheme
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch' " async command execution
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'VundleVim/Vundle.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer --tern-completer' }
Plug 'Yggdroot/indentLine'
Plug 'wincent/Command-T'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'
Plug 'minhajuddin/vim-quickrun'
Plug 'kshenoy/vim-signature'
Plug 'bronson/vim-trailing-whitespace'
Plug 'godlygeek/tabular'
Plug 'mileszs/ack.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'thinca/vim-ref'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'benmills/vimux'
Plug 'jgdavey/vim-turbux'
Plug 'danro/rename.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'slashmili/alchemist.vim'
Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }
Plug 'majutsushi/tagbar'
Plug 'tveskag/nvim-blame-line'
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Language plugs
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Plug 'briancollins/vim-jst'
Plug 'cakebaker/scss-syntax.vim'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-lang/vim-elixir'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'groenewege/vim-less'
Plug 'honza/dockerfile.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'slim-template/vim-slim'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-haml'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'wavded/vim-stylus'
Plug 'wting/rust.vim'
Plug 'leafgarland/typescript-vim'
Plug 'clausreinke/typescript-tools.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Unused plugs
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
" Plug 'tpope/vim-speeddating'
" Plug 'tpope/vim-bundler'
" Plug 'Raimondi/delimitMate'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'airblade/vim-gitgutter'
" Plug 'chrisbra/NrrwRgn'
" Plug 'junegunn/goyo.vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'mustache/vim-mustache-handlebars'
" Plug 'jceb/vim-orgmode'
" Plug 'ryanoasis/vim-devicons'
" Plug 'skalnik/vim-vroom'
" Plug 'junegunn/fzf',        { 'do': 'yes \| ./install' }
" Plug 'junegunn/fzf.vim'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' } " fuzzy file finder
" Plug 'dbext.vim' " check more on this
" Plug 'nelstrom/vim-textobj-rubyblock'
" unused
" Plug 'kchmck/vim-coffee-script'
" Plug 'tpope/vim-liquid'
" Plug 'groenewege/vim-less'
" Plug 'mxw/vim-jsx'
" Plug 'leafgarland/typescript-vim'
runtime macros/matchit.vim
call plug#end()

source ~/.config/nvim/nvim-extra.vim
source ~/.config/nvim/nvim-functions.vim
