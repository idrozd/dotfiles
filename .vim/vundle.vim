" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" Navigation
Bundle 'ZoomWin'
" This fork is required due to remapping ; to :
Bundle 'christoomey/vim-space'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'kien/ctrlp.vim'
" UI Additions
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'Rykka/colorv.vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'mhinz/vim-signify'
Bundle 'mhinz/vim-startify'
Bundle 'mbbill/undotree'
Bundle 'jszakmeister/vim-togglecursor'
" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'rking/ag.vim'
Bundle 'milkypostman/vim-togglelist'
Bundle 'AndrewRadev/sideways.vim'
Bundle 'tpope/vim-abolish'
Bundle 'scratch.vim'
Bundle 'mattn/zencoding-vim'
Bundle 'mutewinter/GIFL'
Bundle 'swaroopch/vim-markdown-preview'
Bundle 'AndrewRadev/switch.vim'
Bundle 'tpope/vim-eunuch'
Bundle 'itspriddle/vim-marked'
Bundle 'mutewinter/UnconditionalPaste'
Bundle 'skalnik/vim-vroom'
Bundle 'HelpClose'
Bundle 'mattn/gist-vim'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'sk1418/Join'
" Automatic Helpers
Bundle 'IndexedSearch'
Bundle 'xolox/vim-session'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
Bundle 'Valloric/MatchTagAlways'
"Bundle 'Valloric/YouCompleteMe'
" Language Additions
"   Ruby
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
"   JavaScript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
"   HTML
Bundle 'nono/vim-handlebars'
Bundle 'othree/html5.vim'
Bundle 'indenthtml.vim'
"   TomDoc
Bundle 'mutewinter/tomdoc.vim'
Bundle 'jc00ke/vim-tomdoc'
"   Other Languages
Bundle 'msanders/cocoa.vim'
Bundle 'mutewinter/taskpaper.vim'
Bundle 'mutewinter/nginx.vim'
Bundle 'timcharper/textile.vim'
Bundle 'mutewinter/vim-css3-syntax'
Bundle 'acustodioo/vim-tmux'
Bundle 'plasticboy/vim-markdown'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'
Bundle 'tpope/vim-cucumber'
" MatchIt
Bundle 'matchit.zip'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
" Libraries
Bundle 'L9'
Bundle 'tpope/vim-repeat'
Bundle 'mattn/webapi-vim'
Bundle 'FredKSchott/CoVim'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-unimpaired'
Bundle 'slim-template/vim-slim'


Bundle "austintaylor/vim-indentobject"
Bundle "bootleq/vim-textobj-rubysymbol"
Bundle "coderifous/textobj-word-column.vim"
Bundle "kana/vim-textobj-datetime"
Bundle "kana/vim-textobj-entire"
Bundle "kana/vim-textobj-function"
Bundle "kana/vim-textobj-user"
Bundle "lucapette/vim-textobj-underscore"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "nelstrom/vim-textobj-rubyblock"
Bundle "thinca/vim-textobj-function-javascript"
Bundle "vim-scripts/argtextobj.vim"

Bundle "epeli/slimux"
Bundle "jgdavey/vim-blockle"
Bundle "goldfeld/vim-seek"

Bundle "https://github.com/michaeljsmith/vim-indent-object"

"Bundle 'https://github.com/mattboehm/vim-unstack'
Bundle 'https://github.com/skwp/greplace.vim'
Bundle 'benmills/vimux'
