let mapleader = ','

"syntax reset
"syntax enable
"syntax on
"colorscheme default
"set background=dark
" save and restore session
" set sessionoptions+=resize
" :mksession vimbook.vim
" :mksession! vimbook.vim
" :source vimbook.vim
" vim -S vimbook.vim
"set foldcolumn=4
"set foldenable
"set foldmethod=indent
"set cursorline
"set foldmethod=syntax
"autocmd BufWinLeave *.* silent mkview
"autocmd BufWinEnter *.* silent loadview

"mac
"vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
"nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p

set nocompatible               " be iMproved
filetype off                   " required!

" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" brower tree
Bundle 'scrooloose/nerdtree'
" autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nmap <leader>wt :NERDTreeToggle<CR>
let NERDTreeWinSize=31
let NERDTreeIgnore=['\.pyc$']
" call s:initVariable("g:NERDTreeDirArrows", !nerdtree#runningWindows())
" call s:initVariable("g:NERDTreeDirArrows", nerdtree#runningWindows())

" switch buffer file
Bundle 'bufexplorer.zip'

" auto make dir
Bundle 'DataWraith/auto_mkdir'

" for commenter
Bundle 'scrooloose/nerdcommenter'

" git assistant
Bundle 'tpope/vim-fugitive'

Bundle 'mileszs/ack.vim'

" surround
Bundle 'tpope/vim-surround'

" abolish
"Bundle 'tpope/vim-abolish'

" syntax
Bundle 'JavaScript-syntax'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
au BufRead,BufNewFile *.json.json_builder set filetype=ruby
au BufRead,BufNewFile *.jst.hbs.erb set filetype=html
au BufRead,BufNewFile *.jst.hbs set filetype=html
"au BufRead,BufNewFile *.css.scss set filetype=css

" indent
Bundle 'JavaScript-Indent'

" pathogen
"Bundle 'tpope/vim-pathogen'

" color1
"Bundle 'tomasr/molokai'
"let g:molokai_original = 1
"syntax enable
"colorscheme molokai
"set background=dark

" color2
Bundle 'altercation/vim-colors-solarized'
syntax enable
set background=dark
let g:solarized_termcolors = 256
let g:solarized_visibility = "low"
"let g:solarized_contrast = "high"
colorscheme solarized

"Bundle 'scrooloose/syntastic'
"let g:syntastic_check_on_open=1
"let g:syntastic_auto_jump=1

Bundle 'kien/ctrlp.vim'
nnoremap <leader>f :CtrlP<CR>

Bundle 'mru.vim'
nnoremap <leader>m :MRU<CR>

"Bundle 'kien/rainbow_parentheses.vim'
"let g:rbpt_colorpairs = [
  "\ ['brown',       'RoyalBlue3'],
  "\ ['Darkblue',    'SeaGreen3'],
  "\ ['darkgray',    'DarkOrchid3'],
  "\ ['darkgreen',   'firebrick3'],
  "\ ['darkcyan',    'RoyalBlue3'],
  "\ ['darkred',     'SeaGreen3'],
  "\ ['darkmagenta', 'DarkOrchid3'],
  "\ ['brown',       'firebrick3'],
  "\ ['gray',        'RoyalBlue3'],
  "\ ['black',       'SeaGreen3'],
  "\ ['darkmagenta', 'DarkOrchid3'],
  "\ ['Darkblue',    'firebrick3'],
  "\ ['darkgreen',   'RoyalBlue3'],
  "\ ['darkcyan',    'SeaGreen3'],
  "\ ['darkred',     'DarkOrchid3'],
  "\ ['red',         'firebrick3'],
  "\ ]
"let g:rbpt_max = 16
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces
"nnoremap <leader>R :RainbowParenthesesToggle<CR>

Bundle 'scratch.vim'
"nnoremap <leader>S :Scratch<CR>

"Bundle 'LargeFile'
"let g:LargeFile=20

"Bundle 'FencView.vim'
"Bundle 'sketch.vim'
"Bundle 'vimtips.zip'
"Bundle 'kana/vim-ku'
"Bundle 'Txtfmt-The-Vim-Highlighter'


Bundle 'YankRing.vim'
let g:yankring_history_file = '.yankring_history_file'

" rails
Bundle 'tpope/vim-rails'

" python
"Bundle 'python.vim'

" taglist
"Bundle 'taglist.vim'
"let Tlist_Ctags_Cmd="/usr/local/bin/ctags"

Bundle 'Shougo/neocomplcache'
" Disable AutoComplPop. Comment out this line if AutoComplPop is not installed.
let g:acp_enableAtStartup = 0
" Launches neocomplcache automatically on vim startup.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underscore completion.
let g:neocomplcache_enable_underbar_completion = 1
" Sets minimum char length of syntax keyword.
let g:neocomplcache_min_syntax_length = 3
" buffer file name pattern that locks neocomplcache. e.g. ku.vim or fuzzyfinder
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
" Define file-type dependent dictionaries.
let g:neocomplcache_dictionary_filetype_lists = {
      \ 'default' : '',
      \ 'vimshell' : $HOME.'/.vimshell_hist',
      \ 'scheme' : $HOME.'/.gosh_completions'
      \ }
" Define keyword, for minor languages
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()
" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1
" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" Enable omni completion. Not required if they are already set elsewhere in .vimrc
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" Enable heavy omni completion, which require computational power and may stall the vim.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

"Bundle 'honza/snipmate-snippets'
Bundle 'msanders/snipmate.vim'

"Bundle 'brookhong/cscope.vim'
"Bundle 'cscope_macros.vim'
"Bundle 'autoload_cscope.vim'
"set cscopetag
"set cscopeverbose
"set csto=0
"map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
"map <F6>  :CscopeGen <CR><CR>

"Bundle 'nathanaelkane/vim-indent-guides'
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 0
"let g:indent_guides_guide_size = 1
"let g:indent_guides_start_level = 2
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=4

" :w !sudo tee %
set number
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
nnoremap <leader><space> :noh<cr>
set shiftround
set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set list
set listchars=tab:\ \ ,trail:.
filetype on
filetype plugin on
filetype indent on
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
set wrap
set encoding=utf-8
set autoread
set autowrite
set splitright
set splitbelow
set nobackup
set noautoindent
set noswapfile
set history=1024
set cmdheight=2
set laststatus=2
set colorcolumn=80
set showcmd
set showmode
set scrolloff=10
set sidescrolloff=5
set display+=lastline
set ruler
set iskeyword+=-,48-57
set viminfo='1000,f1,<500,s10,h
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l
noremap <C-M> <C-W>_
noremap <leader>W :%s/\s\+$//<CR>
"noremap <leader>cc :set paste<CR>
"noremap <leader>cv :set nopaste<CR>
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=5
