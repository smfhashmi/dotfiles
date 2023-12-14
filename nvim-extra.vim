" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		AUTOCOMMANDS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		VIM SETTINGS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" TODO: Move these settings to: Plug 'minhajuddin/vimsettings'
colorscheme molokai

" settings for gvim
if has("gui_running")
  " maximizes the gvim window
  set guifont=Source\ Code\ Pro\ for\ Powerline\ 12
  " set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline\ 11
  set lines=999 columns=999
  " No menus and no toolbar
  set guioptions-=m
  set guioptions-=T
endif

" settings for terminal vim
if !has("gui_running")
  set t_Co=256
endif

let loaded_matchparen=1 " don't automatically highlight the matching parens
let mapleader      = ' '
let maplocalleader = ' '
let g:auto_save = 1  " enable AutoSave on Vim startup
set autowriteall " autosave files
set background=dark
set clipboard=unnamedplus " Yanks go on clipboard
set cmdheight=2
set completeopt=menuone,preview,longest
set cursorline
set diffopt=filler,vertical,iwhite
set encoding=utf-8
set expandtab
set fileencoding=utf8
set fillchars= " unset pipe as the vertical seperator
set foldlevel=3
set foldlevelstart=99
set foldmethod=syntax
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo " These commands open folds
set grepformat=%f:%l:%c:%m,%f:%l:%m
set grepprg=grep\ -nH\ $*
set guioptions=aci
set hidden
set hlsearch " CTRL-L / CTRL-R W
set ignorecase smartcase
set lazyredraw                  " don't redraw while in macros
" set list
set matchtime=0 " to stop automatic moving of cursor to matched paren
set modeline " read modeline from footer to detect filetype?
set mouse=a
set mousehide
set noautoread
set nojoinspaces
set noswapfile
set number " show line number
set selectmode=key
set shiftwidth=2
set shortmess=atI               " shorten messages and don
set showfulltag " When completing by tag, show the whole tag, not just the function name
set showmatch " Show matching braces
set showmode
set smartindent
set softtabstop=2
set splitbelow
set synmaxcol=200 " Syntax coloring lines that are too long just slows down the world
set tabstop=2
set timeoutlen=500
set virtualedit=block
set whichwrap=b,s
set wildchar=9 " tab as completion character
set wildignore+=*.gif,*.fla,*.png,*.swf,*.jpg,tmp/*,public/assets/*,*.ogv,*.ico,*.pdf,node_modules,_build,vendor/assets/bower,__*,data/*
set wildmode=list:longest,full
set wrap!
syntax sync fromstart


" search stuff
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
  set undodir=~/.vim_runtime/temp_dirs/undodir
  set undofile
catch
endtry
" <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
let g:CommandTPreferredImplementation='ruby'
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
"		PLUGIN SETTINGS
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" NERDTree
let NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
let NERDTreeShowHidden=1 " Shows dot files of the project in the nerd tree

let g:NERDShutUp = 1 " disable warnings from NERDCommenter

" ultisnips
let g:UltiSnipsExpandTrigger="<C-o>"
"let g:UltiSnipsJumpForwardTrigger="<C-n>"
"let g:UltiSnipsJumpBackwardTrigger="<C-p>"
let g:UltiSnipsEditSplit="vertical" " If you want :UltiSnipsEdit to split your window.

" help bufferline
let g:bufferline_echo = 0 " hide bufferline from command bar
let g:bufferline_show_bufnr = 1
let g:bufferline_rotate = 2
"let g:bufferline_fixed_index =  0 "always first

" help vim-airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'wombat'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_inactive_collapse= 0

let g:airline#extensions#hunks#enabled = 1

let g:airline#extensions#default#section_truncate_width = {
      \ 'a': 40,
      \ 'b': 80,
      \ 'c': 40,
      \ 'x': 60,
      \ 'y': 90,
      \ 'z': 50,
      \ }

" let g:airline_symbols.linenr = '' "hide linenr symbol
let g:airline_section_z = '%3v' " just show the column number instead of %, linenr and the linenr symbol
let g:airline#extensions#default#section_truncate_width = {}

" rainbow parans
let g:rbpt_colorpairs = [
      \ ['brown',       'RoyalBlue3'],
      \ ['Darkblue',    'SeaGreen3'],
      \ ['darkgray',    'DarkOrchid3'],
      \ ['darkgreen',   'firebrick3'],
      \ ['darkcyan',    'RoyalBlue3'],
      \ ['darkred',     'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['brown',       'firebrick3'],
      \ ['gray',        'RoyalBlue3'],
      \ ['black',       'SeaGreen3'],
      \ ['darkmagenta', 'DarkOrchid3'],
      \ ['Darkblue',    'firebrick3'],
      \ ['darkgreen',   'RoyalBlue3'],
      \ ['darkcyan',    'SeaGreen3'],
      \ ['darkred',     'DarkOrchid3'],
      \ ['red',         'firebrick3'],
      \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" <<<<<

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" indent
let g:indentLine_char = '│'
let g:indentLine_color_gui = '#333333'

"NerdTree Toggle
map <C-n> :NERDTreeToggle<CR>

"mapping the splits between the panes
nnoremap gh <C-W><C-H>
nnoremap gj <C-W><C-J>
nnoremap gk <C-W><C-K>
nnoremap gl <C-W><C-L>

" crtl+f use to find the things in the whole project
nmap     <C-F>f <Plug>CtrlSFPrompt
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath

"switch between opened files
nnoremap <C-Tab> :bn<CR>
nnoremap <C-S-Tab> :bp<CR>

"prettier plugin configuration
nmap <Leader>py <Plug>(Prettier)
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

"YCM configuration
set rtp+=~/.config/nvim/plugged/YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_global_ycm_extra_conf'
let g:ycm_filetype_blacklist = {'typescript': 1}
let g:ycm_filetype_whitelist = {'typescriptreact': 1}
" To trace gutentags issues
" let g:gutentags_trace = 1
autocmd BufWritePre *.py execute ':Black'

