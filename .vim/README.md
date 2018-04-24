# The Vim Configuration of Champions

Version 3! Now each plugin is included and managed in its
[own file](vundle_plugins)!

[![iTerm][ss]][ss]

[ss]: https://github.com/mutewinter/dot_vim/raw/master/screenshots/iTerm.png

## Installation

1. `git clone http://github.com/mutewinter/dot_vim.git ~/.vim`.
1. `cd ~/.vim`.

Now you have a choice. The automated script or the manual process.

1. Run `scripts/setup`.

**or**

1. `rake vim:link` to make the .vimrc symbolic link.
2. Install [Vundle](https://github.com/gmarik/vundle) with `git clone
   http://github.com/gmarik/vundle.git bundle/vundle`
3. `vim "+mkspell ~/.vim/spell/custom.en.utf-8.add" +PluginInstall +qall`
_installs all of the plugins and compiles custom spellings._

Enjoy enhanced productivity, increased levitation, reduced watermelon-related
accidents, and startling sex appeal.

## Vim Requirements

* [MacVim](https://github.com/b4winckler/macvim) - I'm currently using
[snapshot 73](https://github.com/b4winckler/macvim/releases) on Mavericks.

## Plugin Requirements

Here's a list of plugins that require further installation or have
dependencies.

* [Fugitive](https://github.com/tpope/vim-fugitive) Requires Git to be
  installed.
* [syntastic](https://github.com/scrooloose/syntastic) Requires many different
  binaries installed depending on what filetypes you want it to check. See the
  [FAQ](https://github.com/scrooloose/syntastic#faq) for more information.
* [Ag.vim](https://github.com/rking/ag.vim) Requires
  [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) to be
  installed.
* [Source Code for Powerline](http://git.io/H3fYBg) The custom font I'm using
  for vim-airline.
* [CtrlP C Matching Extension](https://github.com/JazzCore/ctrlp-cmatcher)
  requires compilation. See the steps [in its
  readme](https://github.com/JazzCore/ctrlp-cmatcher).
* [underscore-cli](https://github.com/ddopson/underscore-cli) for sweet JSON
  formatting.

## Mappings

* Typing `jk` insert mode is equivalent to `Escape`.
* Pressing `enter` in normal mode saves the current buffer.

And many more. See [`mappings.vim`](mappings.vim) and
[`vundle_plugins`](vundle_plugins) for more.

## Plugin List

| Stars___ | **Plugin** | **Description** |
| -------: | :--------- | :-------------- |
| 4,991 :star: |[YouCompleteMe](https://github.com/Valloric/YouCompleteMe) [:page_facing_up:](vundle_plugins/YouCompleteMe.vim)|A code-completion engine for Vim |
| 4,280 :star: |[vim-fugitive](https://github.com/tpope/vim-fugitive) [:page_facing_up:](vundle_plugins/vim-fugitive.vim)|fugitive.vim: a Git wrapper so awesome, it should be illegal |
| 3,445 :star: |[nerdtree](https://github.com/scrooloose/nerdtree) [:page_facing_up:](vundle_plugins/nerdtree.vim)|A tree explorer plugin for vim. |
| 3,425 :star: |[syntastic](https://github.com/scrooloose/syntastic) [:page_facing_up:](vundle_plugins/syntastic.vim)|Syntax checking hacks for vim |
| 3,319 :star: |[vim-airline](https://github.com/bling/vim-airline) [:page_facing_up:](vundle_plugins/vim-airline.vim)|lean & mean status/tabline for vim that's light as air |
| 3,263 :star: |[ctrlp.vim](https://github.com/kien/ctrlp.vim) [:page_facing_up:](vundle_plugins/ctrlp.vim)|Fuzzy file, buffer, mru, tag, etc finder. |
| 2,518 :star: |[vim-rails](https://github.com/tpope/vim-rails) [:page_facing_up:](vundle_plugins/vim-rails.vim)|rails.vim: Ruby on Rails power tools |
| 2,039 :star: |[vim-surround](https://github.com/tpope/vim-surround) [:page_facing_up:](vundle_plugins/vim-surround.vim)|surround.vim: quoting/parenthesizing made simple |
| 1,854 :star: |[emmet-vim](https://github.com/mattn/emmet-vim)|emmet for vim: http://emmet.io/ |
| 1,342 :star: |[vim-coffee-script](https://github.com/kchmck/vim-coffee-script)|CoffeeScript support for vim |
| 1,102 :star: |[supertab](https://github.com/ervandew/supertab)|Perform all your vim insert mode completions with Tab |
| 1,077 :star: |[vim-ruby](https://github.com/vim-ruby/vim-ruby)|Vim/Ruby Configuration Files |
| 909 :star: |[ultisnips](https://github.com/SirVer/ultisnips) [:page_facing_up:](vundle_plugins/ultisnips.vim)|UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips! |
| 885 :star: |[gist-vim](https://github.com/mattn/gist-vim) [:page_facing_up:](vundle_plugins/gist-vim.vim)|vimscript for gist |
| 831 :star: |[vim-javascript](https://github.com/pangloss/vim-javascript)|Vastly improved Javascript indentation and syntax support in Vim. |
| 828 :star: |[vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides) [:page_facing_up:](vundle_plugins/vim-indent-guides.vim)|A Vim plugin for visually displaying indent levels in code |
| 801 :star: |[tabular](https://github.com/godlygeek/tabular) [:page_facing_up:](vundle_plugins/tabular.vim)|Vim script for text filtering and alignment |
| 754 :star: |[vim-markdown](https://github.com/plasticboy/vim-markdown) [:page_facing_up:](vundle_plugins/vim-markdown.vim)|Markdown Vim Mode |
| 748 :star: |[vimux](https://github.com/benmills/vimux) [:page_facing_up:](vundle_plugins/vimux.vim)|vim plugin to interact with tmux |
| 584 :star: |[delimitMate](https://github.com/Raimondi/delimitMate)|Vim plugin, provides insert mode auto-completion for quotes, parens, brackets, etc. |
| 541 :star: |[jellybeans.vim](https://github.com/nanotech/jellybeans.vim) [:page_facing_up:](vundle_plugins/jellybeans.vim)|A colorful, dark color scheme for Vim. |
| 521 :star: |[vim-startify](https://github.com/mhinz/vim-startify) [:page_facing_up:](vundle_plugins/vim-startify.vim)|A fancy start screen for Vim. |
| 489 :star: |[vim-signify](https://github.com/mhinz/vim-signify) [:page_facing_up:](vundle_plugins/vim-signify.vim)|Show a VCS diff using Vim's sign column. |
| 475 :star: |[vim-repeat](https://github.com/tpope/vim-repeat)|repeat.vim: enable repeating supported plugin maps with "." |
| 475 :star: |[vim-haml](https://github.com/tpope/vim-haml)|Vim runtime files for Haml, Sass, and SCSS |
| 432 :star: |[html5.vim](https://github.com/othree/html5.vim)|HTML5 omnicomplete and syntax |
| 423 :star: |[vim-less](https://github.com/groenewege/vim-less)|vim syntax for LESS (dynamic CSS) |
| 412 :star: |[ag.vim](https://github.com/rking/ag.vim) [:page_facing_up:](vundle_plugins/ag.vim)|Vim plugin for the_silver_searcher, 'ag', a replacement for the Perl module / CLI script 'ack' |
| 405 :star: |[vim-abolish](https://github.com/tpope/vim-abolish)|abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word |
| 371 :star: |[tcomment_vim](https://github.com/tomtom/tcomment_vim) [:page_facing_up:](vundle_plugins/tcomment_vim.vim)|An extensible & universal comment vim-plugin that also handles embedded filetypes |
| 342 :star: |[vim-ruby-refactoring](https://github.com/ecomba/vim-ruby-refactoring)|Refactoring tool for Ruby in vim! |
| 340 :star: |[vim-jade](https://github.com/digitaltoad/vim-jade)|Vim Jade template engine syntax highlighting and indention |
| 323 :star: |[vim-session](https://github.com/xolox/vim-session) [:page_facing_up:](vundle_plugins/vim-session.vim)|Extended session management for Vim (:mksession on steroids) |
| 309 :star: |[vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) [:page_facing_up:](vundle_plugins/vim-tmux-navigator.vim)|Seamless navigation between tmux panes and vim splits |
| 262 :star: |[vim-cucumber](https://github.com/tpope/vim-cucumber)|Vim Cucumber runtime files |
| 257 :star: |[vim-eunuch](https://github.com/tpope/vim-eunuch)|eunuch.vim: helpers for UNIX |
| 234 :star: |[vim-textobj-user](https://github.com/kana/vim-textobj-user)|Vim plugin: Create your own text objects |
| 203 :star: |[webapi-vim](https://github.com/mattn/webapi-vim)|vim interface to Web API |
| 192 :star: |[cocoa.vim](https://github.com/msanders/cocoa.vim)|Vim plugin for Cocoa/Objective-C development. |
| 192 :star: |[undotree](https://github.com/mbbill/undotree)|Display your undo history in a graph. |
| 187 :star: |[vim-bundler](https://github.com/tpope/vim-bundler)|bundler.vim: Lightweight support for Ruby's Bundler |
| 172 :star: |[vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock)|A custom text object for selecting ruby blocks. |
| 162 :star: |[vim-stylus](https://github.com/wavded/vim-stylus)|Syntax Highlighting for Stylus |
| 145 :star: |[vim-turbux](https://github.com/jgdavey/vim-turbux) [:page_facing_up:](vundle_plugins/vim-turbux.vim)|Turbo Ruby testing with tmux |
| 135 :star: |[switch.vim](https://github.com/AndrewRadev/switch.vim) [:page_facing_up:](vundle_plugins/switch.vim)|A simple Vim plugin to switch segments of text with predefined replacements |
| 135 :star: |[vim-rake](https://github.com/tpope/vim-rake)|rake.vim: it's like rails.vim without the rails |
| 125 :star: |[csv.vim](https://github.com/chrisbra/csv.vim)|A Filetype plugin for csv files |
| 104 :star: |[MatchTagAlways](https://github.com/Valloric/MatchTagAlways) [:page_facing_up:](vundle_plugins/MatchTagAlways.vim)|A Vim plugin that always highlights the enclosing html/xml tags |
| 81 :star: |[ZoomWin](https://github.com/vim-scripts/ZoomWin) [:page_facing_up:](vundle_plugins/ZoomWin.vim)|Zoom in/out  of windows (toggle between one window and multi-window) |
| 76 :star: |[matchit.zip](https://github.com/vim-scripts/matchit.zip)|extended % matching for HTML, LaTeX, and many other languages |
| 75 :star: |[vim-handlebars](https://github.com/nono/vim-handlebars)|[deprecated] Vim plugin for Handlebars |
| 73 :star: |[colorv.vim](https://github.com/Rykka/colorv.vim) [:page_facing_up:](vundle_plugins/colorv.vim)|A powerful color tool in vim |
| 67 :star: |[ember.vim](https://github.com/dsawardekar/ember.vim) [:page_facing_up:](vundle_plugins/ember.vim)|Vim plugin for the Emberjs frontend framework |
| 64 :star: |[vim-visual-star-search](https://github.com/nelstrom/vim-visual-star-search)|Start a * or # search from a visual block |
| 64 :star: |[vim-misc](https://github.com/xolox/vim-misc)|Miscellaneous auto-load Vim scripts |
| 45 :star: |[L9](https://github.com/vim-scripts/L9)|Vim-script library |
| 44 :star: |[textile.vim](https://github.com/timcharper/textile.vim)|Textile for VIM |
| 43 :star: |[vim-json](https://github.com/leshill/vim-json)|Syntax highlighting for JSON in Vim |
| 42 :star: |[vim-marked](https://github.com/itspriddle/vim-marked)|Open the current Markdown buffer in Marked.app |
| 37 :star: |[portkey](https://github.com/dsawardekar/portkey) [:page_facing_up:](vundle_plugins/portkey.vim)|Navigate files at the speed of Vim. |
| 32 :star: |[vim-anzu](https://github.com/osyo-manga/vim-anzu) [:page_facing_up:](vundle_plugins/vim-anzu.vim)|Vim search status. |
| 29 :star: |[Join](https://github.com/sk1418/Join)|a better (hopefully) :Join command in vim |
| 28 :star: |[vim-togglelist](https://github.com/milkypostman/vim-togglelist)|Functions to toggle the [Location List] and the [Quickfix List] windows. |
| 24 :star: |[vim-togglecursor](https://github.com/jszakmeister/vim-togglecursor) [:page_facing_up:](vundle_plugins/vim-togglecursor.vim)|Toggle the cursor shape in the terminal for Vim. |
| 15 :star: |[QFEnter](https://github.com/yssl/QFEnter)|Open a Quickfix item in a window you choose. (Vim plugin) |
| 14 :star: |[scratch.vim](https://github.com/vim-scripts/scratch.vim)|Plugin to create and use a scratch Vim buffer |
| 10 :star: |[vim-voogle](https://github.com/papanikge/vim-voogle) [:page_facing_up:](vundle_plugins/vim-voogle.vim)|google for the word under the cursor to a browser because 2013 |
| 8 :star: |[vim-tomdoc](https://github.com/jc00ke/vim-tomdoc)|Simple vim plugin that adds TomDoc templates to your code. |
| 6 :star: |[indenthtml.vim](https://github.com/vim-scripts/indenthtml.vim) [:page_facing_up:](vundle_plugins/indenthtml.vim)|alternative html indent script |
| 6 :star: |[nginx.vim](https://github.com/mutewinter/nginx.vim)|Syntax highlighting for nginx.conf and related config files. |
| 3 :star: |[swap-parameters](https://github.com/mutewinter/swap-parameters)|Swap parameters of a function or a comma separated list with a single command. |
| 3 :star: |[GIFL](https://github.com/mutewinter/GIFL) [:page_facing_up:](vundle_plugins/GIFL.vim)|Add "wrap terms in google I'm feeling lucky url" à la Textmate |
| 2 :star: |[taskpaper.vim](https://github.com/mutewinter/taskpaper.vim)|This package contains a syntax file and a file-type plugin for the simple format used by the TaskPaper application. |
| 1 :star: |[vim-css3-syntax](https://github.com/mutewinter/vim-css3-syntax)|Add CSS3 syntax support to vim's built-in `syntax/css.vim`. |
| 1 :star: |[HelpClose](https://github.com/vim-scripts/HelpClose)|Close all help windows |
| 1 :star: |[tomdoc.vim](https://github.com/mutewinter/tomdoc.vim)|A simple syntax add-on for vim that highlights your TomDoc comments. |
| 0 :star: |[vim-space](https://github.com/zhaocai/vim-space) [:page_facing_up:](vundle_plugins/vim-space.vim)|space.vim - Smart Space key for Vim |
| 0 :star: |[vim-autoreadwatch](https://github.com/mutewinter/vim-autoreadwatch)|A forked script for vim auto reloading of buffers when changed on disk. |
| 0 :star: |[vim-tmux](https://github.com/mutewinter/vim-tmux)|http://tmux.svn.sourceforge.net/viewvc/tmux/trunk/examples/tmux.vim?view=log |

_That's 79 plugins, holy crap._

_Generated by `rake update_readme`._

