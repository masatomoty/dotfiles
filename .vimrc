filetype off
set number
set cursorline
set autoindent
set tabstop=4
syntax on
set wildmenu
set encoding=utf-8
set fileencoding=utf-8
set noswapfile
set nowritebackup
set ruler
set vb t_vb=            " ヒープ音を鳴らさない
set noerrorbells "エラーメッセージの表示時にビープを鳴らさない"
set backspace=indent,eol,start " Backspaceキーの影響範囲に制限を設けない"
set autoread "外部でファイルに変更がされた場合は読みなおす
set nobackup   " ファイル保存時にバックアップファイルを作らない
set noswapfile " ファイル編集中にスワップファイルを作らない
set hlsearch   " 検索文字列をハイライトする"
set shiftwidth=4

" OSのクリップボードをレジスタ指定無しで Yank, Put 出来るようにする
set clipboard=unnamed,unnamedplus

set rtp+=~/.fzf

scriptencoding utf-8
set mouse=n

" Powerline
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"set laststatus=2
"set showtabline=2
"set noshowmode

" neobundle settings {{{
if has('vim_starting')
  set nocompatible
  " neobundle をインストールしていない場合は自動インストール
  if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    echo "install neobundle..."
    " vim からコマンド呼び出しているだけ neobundle.vim のクローン
    :call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
  endif
  " runtimepath の追加は必須
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
let g:neobundle_default_git_protocol='https'

" neobundle#begin - neobundle#end の間に導入するプラグインを記載します。
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'haml.zip'                            " Haml/Sass
NeoBundle 'JavaScript-syntax'                   " JavaScript
NeoBundle 'jQuery'                              " jQuery
NeoBundle 'nginx.vim'                           " nginx.conf
NeoBundle 'joker1007/vim-markdown-quote-syntax' " MarkDown内のコードをハイライト
NeoBundle 'yuroyoro/vim-python'                 " python
NeoBundle 'godlygeek/tabular'                   " テキスト整形
NeoBundle 'yuroyoro/vim-autoclose'              " 閉じ括弧補完
NeoBundle 'grep.vim'                            " Vimでerepを実行
NeoBundle 'tpope/vim-fugitive'          " Gitを使う
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'h1mesuke/unite-outline'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
NeoBundle 'junegunn/fzf.vim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'rking/ag.vim'

" vimrc に記述されたプラグインでインストールされていないものがないかチェックする
NeoBundleCheck
call neobundle#end()
filetype plugin indent on
set t_Co=256
colorscheme jellybeans


if has('lua')
  NeoBundleLazy 'Shougo/neocomplete.vim', {
    \ 'depends' : 'Shougo/vimproc',
    \ 'autoload' : { 'insert' : 1,}
    \ }
endif

au BufRead,BufNewFile *.md set filetype=markdown

" neocomplete {{{
let g:neocomplete#enable_at_startup               = 1
let g:neocomplete#auto_completion_start_length    = 3
let g:neocomplete#enable_ignore_case              = 1
let g:neocomplete#enable_smart_case               = 1
let g:neocomplete#enable_camel_case               = 1
let g:neocomplete#use_vimproc                     = 1
let g:neocomplete#sources#buffer#cache_limit_size = 1000000
let g:neocomplete#sources#tags#cache_limit_size   = 30000000
let g:neocomplete#enable_fuzzy_completion         = 1
let g:neocomplete#lock_buffer_name_pattern        = '\*ku\*'
let g:previm_open_cmd = 'open -a Safari'
" }}}

"" unite-grep {{{
" unite-grepのバックエンドをagに切り替える
" http://qiita.com/items/c8962f9325a5433dc50d
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --nogroup'
let g:unite_source_grep_recursive_opt = ''
let g:unite_source_grep_max_candidates = 200
 
" unite-grepのキーマップ
" 選択した文字列をunite-grep
" https://github.com/shingokatsushima/dotfiles/blob/master/.vimrc
noremap /g y:Unite grep::-iHRn:<C-R>=escape(@", '\\.*$^[]')<CR><CR>
" }}}

nnoremap <silent><C-e> :NERDTreeToggle<CR>
nnoremap <silent><C-r> :FZF<CR>

" Unite Setting
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
