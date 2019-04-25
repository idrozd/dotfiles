;; -*- mode: emacs-lisp -*-

;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; (of) a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     clojure
     ;; parinfer
     ;; csv
     javascript
     ;; markdown
     evil-cleverparens
     ;; ---------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     auto-completion
     ;; better-defaults
     git
     ;; tmux
     osx
     ranger

     ;; iedit
     ;; evil-iedit-state

     ;; imenu-list

     shell

     fasd

     ;; eyebrowse
     ;; vinegar
     theming

     ;; semantic
     ;; restclient

     ;; dash

     evil-snipe

     emacs-lisp
     ruby-on-rails
     (ruby :variables ruby-test-runner 'rspec)
     yaml
     sql
     html
     react

     ;; evil-surround

     chrome

     ;; gtags
     ;; markdown

     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     syntax-checking
     version-control

     themes-megapack
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config
   dotspacemacs-additional-packages
   '(
     sql-indent
     slim-mode
     web-mode
     coffee-mode
     sass-mode

     ;; avy ;; jump to stuff

     ;; eglot
     ;; lsp-mode
     ;; yari
     ;; lsp-mode
     ;; lsp-ruby
     greymatters-theme
     punpun-theme
     grayscale-theme
     eziam-theme
     creamsody-theme
     ;; paganini-theme
     ;; NOT AVAILABLE IN MELPA:
     ;; reykjavik-theme
     ;; arjen-grey-theme
     ;; eltbus-theme
     ;; iodine-theme
     ;; resolve-theme
     ;; subtle-blue-theme

     ;; helm-dash
     yasnippet-snippets
     rvm



     osx-clipboard

     ruby-hash-syntax

     ;; clojure-cheatsheet
     ;; parinfer ;; doesn't exist yet

     ;; ecb
     ;; rings

     ;; flycheck-clojure
     ;; discover-clj-refactor
     ;; helm-clojuredocs

     )

   dotspacemacs-excluded-packages '(
                                    flycheck
                                    )
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
  ;; (dotspacemacs-delete-orphan-packages t)

   ))

(defun dotspacemacs/config ()
  (setq-default 'truncate-lines f)
  (setq-default 'syntax-checking-enable-tooltips f)

  ;;the theme doesn't help with the persistent highlighting, which is impossible to read
  ;; (set-face-attribute 'evil-search-highlight-persist-highlight-face nil
  ;;                     :foreground "white"
  ;;                     :background "sea green")

)

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         grayscale
                         eziam-dark
                         eziam-dusk
                         eziam-light
                         spacemacs-dark
                         heroku
                         minimal
                         tao-yin
                         professional
                         ;; clues
                         ;; birds-of-paradise-plus
                         ;; underwater
                         light-soap
                         ;; default
                         soft-stone
                         ;; ritchie
                         ;; fogus
                         subatomic-256
                         )
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   ;; dotspacemacs-default-font '("Source Code Pro"
   ;; dotspacemacs-default-font '("Space Mono"
   ;; dotspacemacs-default-font '("Fira Code Retina"
   ;; dotspacemacs-default-font '("Fira Code "
   ;; change in iterm profile
   dotspacemacs-default-font '("League Mono"
                               :size 13
                               :weight ultralight
                               :width expanded
                               :powerline-scale 1.0)

   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   ;; dotspacemacs-mode-line-unicode-symbols t
   dotspacemacs-mode-line-unicode-symbols nil
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  (setq-default ruby-version-manager 'rvm)

  (add-hook 'ruby-mode-hook
            (lambda () (hs-minor-mode)))

  (add-hook 'ruby-mode-hook
            (lambda () (rvm-activate-corresponding-ruby)))

  ;; (add-hook 'ruby-mode-hook #'lsp-ruby-enable)


  (add-hook 'inf-ruby-mode-hook
            (lambda ()
              (comint-replace-by-expanded-history "~/.pry_history")))

  (eval-after-load "hideshow"
    '(add-to-list 'hs-special-modes-alist
                  `(ruby-mode
                    ,(rx (or "def" "class" "module" "do" "{" "[")) ; Block start
                    ,(rx (or "}" "]" "end"))                       ; Block end
                    ,(rx (or "#" "=begin"))                        ; Comment start
                    ruby-forward-sexp nil)))                       ;

  (add-to-list 'auto-mode-alist '("\\.pryrc\\'" . ruby-mode))

  (setq-default
   ;; Theme modifications
    theming-modifications
    '(
      (punpun-dark
        (helm-selection :background "color-20"))

      (dorsey
       (helm-selection :background "color-20"))

      (clues
       (helm-selection :background "color-20"))

      (fogus
       (helm-selection :background "color-20"))

      (punpun-light
       (helm-selection :background "color-45"))

      (heroku
       (helm-selection :background "color-100"))

      (ritchie
        ;; (helm-selection :background "#B0E0E6"))
       (helm-selection :background "color-195")
       (show-paren-match :background "color-45"))

      ;; (punpun-light
      ;;  ;; (helm-selection :background "#B0E0E6"))
      ;;  (helm-selection :background "color-195")
      ;;  )

      (tao-yin
       (helm-selection :background "#373426"))

      (sunny-day
       ;; (helm-selection :background "#B0E0E6"))
       (helm-selection :background "color-195")
       )

      (light-soap
       ;; (helm-selection :background "#B0E0E6"))
       (helm-selection :background "color-195")
       )

      (birds-of-paradise-plus
       ;; (helm-selection :background "#B0E0E6"))
       (helm-selection :background "color-20")
       )

      (gandalf
       ;; (helm-selection :background "#B0E0E6"))
       (helm-selection :background "color-195")
       )

      (soft-stone
       ;; (helm-selection :background "#B0E0E6"))
       (helm-selection :background "color-195")
       )

      (monochrome-bright
       (helm-selection :background "color-45"))

      (minimal
       ;; (helm-selection :background "#B0E0E6"))
       (helm-selection :background "color-45")
       )

      (minimal-light
       ;; (helm-selection :background "#B0E0E6"))
       (helm-selection :background "color-45")
       (region :background "lightgrey")
       )

      (professional
        ;; (hl-line :background "#181818")
        (hl-line :background "lightgrey")
       )

      (greymatter s
       (hl-line :background "lightgrey")
       )
      ;; FOR REFERENCE:
      ;; ;; Font locking
      ;; (font-lock-comment-face :slant italic)
      ;; (font-lock-string-face :slant italic)
      ;; (font-lock-doc-face :slant italic)
      ;; (font-lock-keyword-face :weight bold)
      ;; (font-lock-builtin-face :foreground "#ff9eb8")
      ;; (font-lock-warning-face :underline nil)
      ;; (web-mode-html-attr-value-face
      ;;  :inherit font-lock-string-face :foreground nil)
      ;; (web-mode-html-attr-name-face
      ;;  :inherit font-lock-variable-name-face :foreground nil)
      ;; (web-mode-html-tag-face
      ;;  :inherit font-lock-builtin-face :foreground nil :weight bold)
      ;; (web-mode-html-tag-bracket-face
      ;;  :inherit web-mode-html-tag-face :foreground nil)
      ;; (web-mode-comment-face
      ;;  :inherit font-lock-comment-face :foreground nil)

      ;; ;; Modeline
      ;; (mode-line :box (:color "#999999" :line-width 1 :style released-button))
      ;; (powerline-active1 :box (:color "#999999" :line-width 1 :style released-button)
      ;;                    :background "#5a5a5a")
      ;; (powerline-active2 :box (:color "#999999" :line-width 1 :style released-button))
      ;; (mode-line-inactive :box (:color "#666666" :line-width 1 :style released-button))
      ;; (powerline-inactive1 :box (:color "#666666" :line-width 1 :style released-button))
      ;; (powerline-inactive2 :box (:color "#666666" :line-width 1 :style released-button))
      ;; (helm-prefarg :foreground "PaleGreen")

      ;; ;; Flycheck
      ;; (flycheck-fringe-error :background nil)
      ;; (flycheck-fringe-warning :background nil)
      ;; (flycheck-fringe-info :background nil)

      ;; ;; Other
      ;; (company-tooltip-annotation
      ;;  :foreground "#ff9eb8" :background "#49483e")
      ;; (erc-timestamp-face
      ;;  :inherit font-lock-comment-face :foreground nil)
      ;; (evil-search-highlight-persist-highlight-face
      ;;  :background "#fc5fef" :foreground "#000000")
      ;; (region :background "#998f84")

   ))

  ;; Load this file by putting it in a directory that is in your load path

  (setq dotenv-mode-highlights
        '(;; ("^[^[:alpha:]_].*\\|:[^[:space:]]+.*\\|=[[:space:]].*" . font-lock-warning-face)
          ("^[[:alpha:]_]+[[:alpha:][:digit:]_]*" . font-lock-variable-name-face)
          ;; ("=?\\|:?[[:space:]]" . font-lock-comment-delimiter-face)
          ("#.*" . font-lock-comment-face)))

  (define-derived-mode dotenv-mode
    prog-mode
    (setq-local font-lock-defaults '(dotenv-mode-highlights))
    (setq-local mode-name "Env"))

  (provide 'dotenv-mode)

  ;;;;; Execute the following lines (using your init code after loading this file)
  ;;;;; to get basic syntax highlighting on .env files.
  (add-to-list 'auto-mode-alist '("\\.env.*\\'" . dotenv-mode))
  ;; (require 'dotenv-mode)

  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  ;; (server-start)
  (with-eval-after-load 'avy
    (when (and (not (fboundp 'avy--with-avy-keys))
               (fboundp 'avy-with))
      (defalias 'avy--with-avy-keys 'avy-with)))


  ;; (require 'bracketed-paste)
  ;; (bracketed-paste-enable)

  (delete-selection-mode 1)


  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "HISTFILE")

  (add-hook 'ruby-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  ;; (add-hook 'ruby-mode-hook #'(lambda () (modify-syntax-entry ?@ "w")))
  (add-hook 'js2-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  (add-hook 'web-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))
  (add-hook 'react-mode-hook #'(lambda () (modify-syntax-entry ?_ "w")))

  (add-hook 'before-save-hook 'delete-trailing-whitespace)


  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "HISTFILE")

  (defun turn-on-comint-history (history-file)
    (setq comint-input-ring-file-name history-file)
    (comint-read-input-ring 'silent))

  (add-hook 'shell-mode-hook
            (lambda ()
              (turn-on-comint-history (getenv "HISTFILE"))))

  ;; (add-hook 'inf-ruby-mode-hook
  ;;           (lambda ()
  ;;             (comint-replace-by-expanded-history "~/.pry_history")
  ;;             (comint-replace-by-expanded-history "~/.pry_history")))
  (add-hook 'inf-ruby-mode-hook
            (lambda ()
              (turn-on-comint-history "~/.pry_history")))

  (add-hook 'kill-buffer-hook #'comint-write-input-ring)
  (add-hook 'kill-emacs-hook
            (lambda ()
              (--each (buffer-list)
                (with-current-buffer it (comint-write-input-ring)))))


  (add-hook 'dired-mode-hook (lambda () (dired-omit-mode)))

  (defun my/emerge (local remote base output)
    (emerge-files-with-ancestor nil local remote base output nil 'my/emerge--close-current-frame))

  (defun my/emerge--close-current-frame ()
    "Close the current frame, duh"
    ;; This is simple enough to be a lamdba, however, that would make
    ;; EMERGE-FILES-WITH-ANCESTOR look ugly, I prefer keeping
    ;; arguments in one line, if possible.
    (delete-frame (selected-frame)))

  (defun bb/setup-term-mode ()
    (evil-local-set-key 'insert (kbd "C-r") 'bb/send-C-r))

  (defun bb/send-C-r ()
    (interactive)
    (term-send-raw-string "\C-r"))

  (add-hook 'term-mode-hook 'bb/setup-term-mode)


  (add-hook 'kill-buffer-hook #'comint-write-input-ring)
  (add-hook 'kill-emacs-hook
            (lambda ()
              (--each (buffer-list)
                (with-current-buffer it (comint-write-input-ring)))))

  ;; enable visual feedback on selections
  (setq transient-mark-mode t)

  ;; default to better frame titles
  (setq frame-title-format
        (concat  "%b - emacs@" (system-name)))

  ;; default to unified diffs
  (setq diff-switches "-u")

  ;; always end a file with a newline
                                        ;(setq require-final-newline 'query)

;;; uncomment for CJK utf-8 support for non-Asian users
  ;; (require 'un-define)
  (require 'xt-mouse)
  (xterm-mouse-mode)
  (require 'mouse)
  (xterm-mouse-mode t)
  (defun track-mouse (e))

  (setq mouse-wheel-follow-mouse 't)

  (defvar alternating-scroll-down-next t)
  (defvar alternating-scroll-up-next t)

  (defun alternating-scroll-down-line ()
    (interactive "@")
    (when alternating-scroll-down-next
                                        ;      (run-hook-with-args 'window-scroll-functions )
      (scroll-down-line))
    (setq alternating-scroll-down-next (not alternating-scroll-down-next)))

  (defun alternating-scroll-up-line ()
    (interactive "@")
    (when alternating-scroll-up-next
                                        ;      (run-hook-with-args 'window-scroll-functions)
      (scroll-up-line))
    (setq alternating-scroll-up-next (not alternating-scroll-up-next)))

  (global-set-key (kbd "<mouse-4>") 'alternating-scroll-down-line)
  (global-set-key (kbd "<mouse-5>") 'alternating-scroll-up-line)

  ;; (setq clojure-enable-fancify-symbols t)


  ;; (setc-archives '(("gnu" . "http://elpa.gnu.org/packages/")
  ;;                          ("marmalade" . "http://marmalade-repo.org/packages/")
  ;;                          ("melpa" . "http://melpa.milkbox.net/packages/")))
  ;; (package-initialize)
                                        ;(elpy-enable)
  (put 'downcase-region 'disabled nil)
  (put 'upcase-region 'disabled nil)

  ;; (spacemacs/declare-prefix "]" "bracket-prefix")
  (define-key evil-normal-state-map (kbd "L") 'evil-end-of-visual-line)
  (define-key evil-normal-state-map (kbd "H") 'evil-first-non-blank-of-visual-line)
  (define-key evil-visual-state-map (kbd "L") 'evil-end-of-visual-line)
  (define-key evil-visual-state-map (kbd "H") 'evil-first-non-blank-of-visual-line)
  (fset 'evil-visual-update-x-selection 'ignore)

  (define-key evil-normal-state-map (kbd "go") 'spacemacs/evil-insert-line-below)
  (define-key evil-normal-state-map (kbd "gO") 'spacemacs/evil-insert-line-above)

  (define-key comint-mode-map (kbd "<up>") 'comint-previous-input)
  (define-key comint-mode-map (kbd "<UP>") 'comint-previous-input)
  (define-key comint-mode-map (kbd "<down>") 'comint-next-input)
  (define-key comint-mode-map (kbd "<DOWN>") 'comint-next-input)

  (evil-leader/set-key "py" 'helm-etags-select)

  (setq undo-tree-auto-save-history t
        undo-tree-history-directory-alist
        `(("." . ,(concat spacemacs-cache-directory "undo"))))
  (unless (file-exists-p (concat spacemacs-cache-directory "undo"))
    (make-directory (concat spacemacs-cache-directory "undo")))


  ;; (setq helm-display-function
  ;;       (lambda (buf)
  ;;         (split-window-horizontally)
  ;;         (other-window 1)
  ;;         (switch-to-buffer buf)))

  ;; Code folding
  (add-hook 'ruby-mode-hook
            (lambda () (hs-minor-mode)))

  (eval-after-load "hideshow"
    '(add-to-list 'hs-special-modes-alist
                  `(ruby-mode
                    ,(rx (or "def" "class" "module" "do" "{" "[")) ; Block start
                    ,(rx (or "}" "]" "end"))                       ; Block end
                    ,(rx (or "#" "=begin"))                        ; Comment start
                    ruby-forward-sexp nil)))

  ;; (spacemacs/helm-gtags-define-keys-for-mode 'ruby-mode)
  ;; (spacemacs/helm-gtags-define-keys-for-mode 'rspec-mode)
  ;; (evil-leader/set-key-for-mode 'ruby-mode "gg" 'helm-gtags-dwim)
  ;; (evil-leader/set-key-for-mode 'rspec-mode "gg" 'helm-gtags-dwim)

  (spacemacs/set-leader-keys "n R" 'ni-narrow-to-region-indirect-other-window)
  (spacemacs/set-leader-keys "n F" 'ni-narrow-to-defun-indirect-other-window)


  (spacemacs/set-leader-keys "h j" 'hs-hide-level)
  (spacemacs/set-leader-keys "h k" 'hs-show-block)

  (global-set-key (kbd "C-c h <left>") 'hs-hide-block)
  (global-set-key (kbd "C-c h <right>") 'hs-show-block)
  (global-set-key (kbd "C-c h <up>") 'hs-hide-level)
  (global-set-key (kbd "C-i") 'evil-jump-forward)

  (setq evil-snipe-override-evil t)
  (setq evil-snipe-repeat-keys t)
  (setq evil-snipe-scope 'whole-buffer)
  (setq evil-snipe-repeat-scope 'whole-buffer)

  (setq-default
   standard-indent 2
   tab-width 2
   indent-tabs-mode nil
   js-indent-level 2
   js2-basic-offset 2
   js2-strict-semi-warning nil
   js2-missing-semi-one-line-override nil
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-indent-style 2
   web-mode-attr-indent-offset 2)


  (add-hook 'cider-repl-mode-hook #'eldoc-mode)
  ;; (require 'loccur)
  ;; ;; defines shortcut for loccur of the current word
  ;; (define-key global-map [(control o)] 'loccur-current)
  ;; ;; defines shortcut for the interactive loccur command
  ;; (define-key global-map [(control meta o)] 'loccur)
  ;; ;; defines shortcut for the loccur of the previously found word
  ;; (define-key global-map [(control shift o)] 'loccur-previous-match)

  ;; (setq jiralib-url "http://jira.aligntech.com")


  ;; ;;; Fira code
  ;; ;; This works when using emacs --daemon + emacsclient
  ;; (add-hook 'after-make-frame-functions (lambda (frame) (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")))
  ;; ;; This works when using emacs without server/client
  ;; (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")
  ;; ;; I haven't found one statement that makes both of the above situations work, so I use both for now

  ;; (defconst fira-code-font-lock-keywords-alist
  ;;   (mapcar (lambda (regex-char-pair)
  ;;             `(,(car regex-char-pair)
  ;;               (0 (prog1 ()
  ;;                   (compose-region (match-beginning 1)
  ;;                                   (match-end 1)
  ;;                                   ;; The first argument to concat is a string containing a literal tab
  ;;                                   ,(concat "   " (list (decode-char 'ucs (cadr regex-char-pair)))))))))
  ;;           '(("\\(www\\)"                   #Xe100)
  ;;             ("[^/]\\(\\*\\*\\)[^/]"        #Xe101)
  ;;             ("\\(\\*\\*\\*\\)"             #Xe102) ;
  ;;             ("\\(\\*\\*/\\)"               #Xe103)
  ;;             ("\\(\\*>\\)"                  #Xe104)
  ;;             ("[^*]\\(\\*/\\)"              #Xe105)
  ;;             ("\\(\\\\\\\\\\)"              #Xe106)
  ;;             ("\\(\\\\\\\\\\\\\\)"          #Xe107)
  ;;             ("\\({-\\)"                    #Xe108)
  ;;             ("\\(\\[\\]\\)"                #Xe109)
  ;;             ("\\(::\\)"                    #Xe10a)
  ;;             ("\\(:::\\)"                   #Xe10b)
  ;;             ("[^=]\\(:=\\)"                #Xe10c)
  ;;             ("\\(!!\\)"                    #Xe10d)
  ;;             ("\\(!=\\)"                    #Xe10e)
  ;;             ("\\(!==\\)"                   #Xe10f)
  ;;             ("\\(-}\\)"                    #Xe110)
  ;;             ("\\(--\\)"                    #Xe111)
  ;;             ("\\(---\\)"                   #Xe112)
  ;;             ("\\(-->\\)"                   #Xe113)
  ;;             ("[^-]\\(->\\)"                #Xe114)
  ;;             ("\\(->>\\)"                   #Xe115)
  ;;             ("\\(-<\\)"                    #Xe116)
  ;;             ("\\(-<<\\)"                   #Xe117)
  ;;             ("\\(-~\\)"                    #Xe118)
  ;;             ("\\(#{\\)"                    #Xe119)
  ;;             ("\\(#\\[\\)"                  #Xe11a)
  ;;             ("\\(##\\)"                    #Xe11b)
  ;;             ("\\(###\\)"                   #Xe11c)
  ;;             ("\\(####\\)"                  #Xe11d)
  ;;             ("\\(#(\\)"                    #Xe11e)
  ;;             ("\\(#\\?\\)"                  #Xe11f)
  ;;             ("\\(#_\\)"                    #Xe120)
  ;;             ("\\(#_(\\)"                   #Xe121)
  ;;             ("\\(\\.-\\)"                  #Xe122)
  ;;             ("\\(\\.=\\)"                  #Xe123)
  ;;             ("\\(\\.\\.\\)"                #Xe124)
  ;;             ("\\(\\.\\.<\\)"               #Xe125)
  ;;             ("\\(\\.\\.\\.\\)"             #Xe126)
  ;;             ("\\(\\?=\\)"                  #Xe127)
  ;;             ("\\(\\?\\?\\)"                #Xe128)
  ;;             ("\\(;;\\)"                    #Xe129)
  ;;             ("\\(/\\*\\)"                  #Xe12a)
  ;;             ("\\(/\\*\\*\\)"               #Xe12b)
  ;;             ("\\(/=\\)"                    #Xe12c)
  ;;             ("\\(/==\\)"                   #Xe12d)
  ;;             ("\\(/>\\)"                    #Xe12e)
  ;;             ("\\(//\\)"                    #Xe12f)
  ;;             ("\\(///\\)"                   #Xe130)
  ;;             ("\\(&&\\)"                    #Xe131)
  ;;             ("\\(||\\)"                    #Xe132)
  ;;             ("\\(||=\\)"                   #Xe133)
  ;;             ("[^|]\\(|=\\)"                #Xe134)
  ;;             ("\\(|>\\)"                    #Xe135)
  ;;             ("\\(\\^=\\)"                  #Xe136)
  ;;             ("\\(\\$>\\)"                  #Xe137)
  ;;             ("\\(\\+\\+\\)"                #Xe138)
  ;;             ("\\(\\+\\+\\+\\)"             #Xe139)
  ;;             ("\\(\\+>\\)"                  #Xe13a)
  ;;             ("\\(=:=\\)"                   #Xe13b)
  ;;             ("[^!/]\\(==\\)[^>]"           #Xe13c)
  ;;             ("\\(===\\)"                   #Xe13d)
  ;;             ("\\(==>\\)"                   #Xe13e)
  ;;             ("[^=]\\(=>\\)"                #Xe13f)
  ;;             ("\\(=>>\\)"                   #Xe140)
  ;;             ("\\(<=\\)"                    #Xe141)
  ;;             ("\\(=<<\\)"                   #Xe142)
  ;;             ("\\(=/=\\)"                   #Xe143)
  ;;             ("\\(>-\\)"                    #Xe144)
  ;;             ("\\(>=\\)"                    #Xe145)
  ;;             ("\\(>=>\\)"                   #Xe146)
  ;;             ("[^-=]\\(>>\\)"               #Xe147)
  ;;             ("\\(>>-\\)"                   #Xe148)
  ;;             ("\\(>>=\\)"                   #Xe149)
  ;;             ("\\(>>>\\)"                   #Xe14a)
  ;;             ("\\(<\\*\\)"                  #Xe14b)
  ;;             ("\\(<\\*>\\)"                 #Xe14c)
  ;;             ("\\(<|\\)"                    #Xe14d)
  ;;             ("\\(<|>\\)"                   #Xe14e)
  ;;             ("\\(<\\$\\)"                  #Xe14f)
  ;;             ("\\(<\\$>\\)"                 #Xe150)
  ;;             ("\\(<!--\\)"                  #Xe151)
  ;;             ("\\(<-\\)"                    #Xe152)
  ;;             ("\\(<--\\)"                   #Xe153)
  ;;             ("\\(<->\\)"                   #Xe154)
  ;;             ("\\(<\\+\\)"                  #Xe155)
  ;;             ("\\(<\\+>\\)"                 #Xe156)
  ;;             ("\\(<=\\)"                    #Xe157)
  ;;             ("\\(<==\\)"                   #Xe158)
  ;;             ("\\(<=>\\)"                   #Xe159)
  ;;             ("\\(<=<\\)"                   #Xe15a)
  ;;             ("\\(<>\\)"                    #Xe15b)
  ;;             ("[^-=]\\(<<\\)"               #Xe15c)
  ;;             ("\\(<<-\\)"                   #Xe15d)
  ;;             ("\\(<<=\\)"                   #Xe15e)
  ;;             ("\\(<<<\\)"                   #Xe15f)
  ;;             ("\\(<~\\)"                    #Xe160)
  ;;             ("\\(<~~\\)"                   #Xe161)
  ;;             ("\\(</\\)"                    #Xe162)
  ;;             ("\\(</>\\)"                   #Xe163)
  ;;             ("\\(~@\\)"                    #Xe164)
  ;;             ("\\(~-\\)"                    #Xe165)
  ;;             ("\\(~=\\)"                    #Xe166)
  ;;             ("\\(~>\\)"                    #Xe167)
  ;;             ("[^<]\\(~~\\)"                #Xe168)
  ;;             ("\\(~~>\\)"                   #Xe169)
  ;;             ("\\(%%\\)"                    #Xe16a)
  ;;           ;; ("\\(x\\)"                   #Xe16b) This ended up being hard to do properly so i'm leaving it out.
  ;;             ("[^:=]\\(:\\)[^:=]"           #Xe16c)
  ;;             ("[^\\+<>]\\(\\+\\)[^\\+<>]"   #Xe16d)
  ;;             ("[^\\*/<>]\\(\\*\\)[^\\*/<>]" #Xe16f))))

  ;; (defun add-fira-code-symbol-keywords ()
  ;;   (font-lock-add-keywords nil fira-code-font-lock-keywords-alist))

  ;; (add-hook 'prog-mode-hook
  ;;           #'add-fira-code-symbol-keywords)

   ;; (let ((alist '((33 . ".\\(?:\\(?:==\\|!!\\)\\|[!=]\\)")
   ;;                (35 . ".\\(?:###\\|##\\|_(\\|[#(?[_{]\\)")
   ;;                (36 . ".\\(?:>\\)")
   ;;                (37 . ".\\(?:\\(?:%%\\)\\|%\\)")
   ;;                (38 . ".\\(?:\\(?:&&\\)\\|&\\)")
   ;;                (42 . ".\\(?:\\(?:\\*\\*/\\)\\|\\(?:\\*[*/]\\)\\|[*/>]\\)")
   ;;                (43 . ".\\(?:\\(?:\\+\\+\\)\\|[+>]\\)")
   ;;                ;; (45 . ".\\(?:\\(?:-[>-]\\|<<\\|>>\\)\\|[<>}~-]\\)")
   ;;                ;; (46 . ".\\(?:\\(?:\\.[.<]\\)\\|[.=-]\\)")
   ;;                ;; (47 . ".\\(?:\\(?:\\*\\*\\|//\\|==\\)\\|[*/=>]\\)")
   ;;                (48 . ".\\(?:x[a-zA-Z]\\)")
   ;;                (58 . ".\\(?:::\\|[:=]\\)")
   ;;                (59 . ".\\(?:;;\\|;\\)")
   ;;                (60 . ".\\(?:\\(?:!--\\)\\|\\(?:~~\\|->\\|\\$>\\|\\*>\\|\\+>\\|--\\|<[<=-]\\|=[<=>]\\||>\\)\\|[*$+~/<=>|-]\\)")
   ;;                (61 . ".\\(?:\\(?:/=\\|:=\\|<<\\|=[=>]\\|>>\\)\\|[<=>~]\\)")
   ;;                (62 . ".\\(?:\\(?:=>\\|>[=>-]\\)\\|[=>-]\\)")
   ;;                ;; (63 . ".\\(?:\\(\\?\\?\\)\\|[:=?]\\)")
   ;;                (91 . ".\\(?:]\\)")
   ;;                (92 . ".\\(?:\\(?:\\\\\\\\\\)\\|\\\\\\)")
   ;;                (94 . ".\\(?:=\\)")
   ;;                (119 . ".\\(?:ww\\)")
   ;;                (123 . ".\\(?:-\\)")
   ;;                (124 . ".\\(?:\\(?:|[=|]\\)\\|[=>|]\\)")
   ;;                (126 . ".\\(?:~>\\|~~\\|[>=@~-]\\)")
   ;;                )
   ;;              ))

   ;;   (dolist (char-regexp alist)
   ;;     (set-char-table-range composition-function-table (car char-regexp)
   ;;                           `([,(cdr char-regexp) 0 font-shape-gstring]))))

  ;; (custom-theme-set-faces
  ;;  'punpun-dark
  ;;  '(helm-selection ((t (:background "color-58")))))

)

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#080808" "#d70000" "#67b11d" "#875f00" "#268bd2" "#af00df" "#00ffff" "#b2b2b2"])
 '(clojure-indent-style t)
 '(company-idle-delay 0.5)
 '(company-tooltip-idle-delay 2.5)
 '(css-indent-offset 2)
 '(cursor-type t)
 '(custom-enabled-themes (quote (stekene-dark)))
 '(custom-safe-themes
   (quote
    ("25da85b0d62fd69b825e931e27079ceeb9fd041d14676337ea1ce1919ce4ab17" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "7beac4a68f03662b083c9c2d4f1d7f8e4be2b3d4b0d904350a9edf3cf7ce3d7f" "7abad4fa52491e09a71da2674fd05909d869c6a8d9ebab3cc56c38b0b8b623e4" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "bac3f5378bc938e96315059cd0488d6ef7a365bae73dac2ff6698960df90552d" default)))
 '(ecb-options-version "2.40")
 '(electric-indent-mode t)
 '(evil-cleverparens-indent-afterwards t)
 '(evil-esc-delay 0.001)
 '(evil-escape-delay 0.05)
 '(evil-shift-width 2)
 '(evil-want-Y-yank-to-eol t)
 '(fci-rule-color "#FFFFF8" t)
 '(fill-column 120)
 '(global-diff-hl-mode t)
 '(google-translate-default-source-language "en" t)
 '(google-translate-default-target-language "ru" t)
 '(helm-always-two-windows t)
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(linum-format " %7i ")
 '(package-selected-packages
   (quote
    (lv parseedn parseclj a php-auto-yasnippets phpunit phpcbf php-mode transient creamsody-theme eziam-theme grayscale-theme lsp-ruby lsp-mode imenu-list projectile-rails helm-clojuredocs spinner popup makey discover discover-clj-refactor flycheck-clojure iedit treepy graphql -auto-yasnippets restclient-helm ob-restclient ob-http company-restclient restclient know-your-http-well pcre2el skewer-mode json-snatcher json-reformat parent-mode request haml-mode ham-mode html-to-markdown fringe-helper git-gutter+ git-gutter pos-tip flx anzu autothemer web-completion-data tern sesman pkg-info bind-map auto-complete popup-mode yasnippet-snippets multiple-cursors packed gitignore-mode simple-httpd s clojure-snippets clj-refactor edn peg cider-eval-sexp-fu cider queue clojure-mode white-sand-theme rebecca-theme exotica-theme highlight epl dash-functional yasnippet ghub async inf-ruby js2-mode powerline dash which-key web-mode use-package tao-theme solarized-theme robe material-theme helm-dash gruvbox-theme flatland-theme eyebrowse evil-matchit dumb-jump drupal-mode color-theme-sanityinc-tomorrow ace-window paredit smartparens evil flycheck company projectile helm helm-core avy markdown-mode org-plus-contrib magit magit-popup git-commit hydra f zonokai-theme zenburn-theme zen-and-art-theme yaml-mode xterm-color ws-butler with-editor winum web-beautify volatile-highlights vi-tilde-fringe uuidgen undo-tree underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toc-org tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stickyfunc-enhance stekene-theme srefactor sql-indent spaceline spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme selectric-mode scss-mode sass-mode rvm ruby-tools ruby-test-mode ruby-hash-syntax rubocop rspec-mode reverse-theme reveal-in-osx-finder restart-emacs rbenv ranger rake rainbow-delimiters railscasts-theme purple-haze-theme punpun-theme pug-mode professional-theme popwin planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pbcopy pastels-on-dark-theme paradox paganini-theme osx-trash osx-dictionary osx-clipboard orgit organic-green-theme org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme neotree narrow-indirect naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minitest minimal-theme markdown-toc majapahit-theme magit-gitflow madhat2r-theme macrostep lush-theme lorem-ipsum livid-mode linum-relative link-hint light-soap-theme less-css-mode launchctl json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme inkpot-theme info+ inflections indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruber-darker-theme greymatters-theme grandshell-theme goto-chg gotham-theme google-translate golden-ratio gmail-message-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md gandalf-theme fuzzy flymd flycheck-pos-tip flx-ido flatui-theme firebelly-theme fill-column-indicator feature-mode fasd farmhouse-theme fancy-battery expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eval-sexp-fu espresso-theme eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav edit-server drag-stuff dracula-theme django-theme diminish diff-hl dash-at-point darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme csv-mode company-web company-tern company-statistics column-enforce-mode color-theme-sanityinc-solarized coffee-mode clues-theme clean-aindent-mode chruby cherry-blossom-theme busybee-theme bundler bubbleberry-theme birds-of-paradise-plus-theme bind-key badwolf-theme auto-yasnippet auto-highlight-symbol auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-link ace-jump-helm-line ac-ispell)))
 '(projectile-tags-command
   "ctags -Re -f \"%s\" %s --exclude=coverage/\\* --exclude=tmp/\\* --exclude=vendor/\\* --exclude=public/\\* --exclude=app/assets/javascripts/shared/\\*")
 '(rainbow-identifiers-cie-l*a*b*-lightness 25)
 '(rainbow-identifiers-cie-l*a*b*-saturation 40)
 '(rspec-command-options "--format documentation -rlog")
 '(rspec-use-bundler-when-possible nil)
 '(rspec-use-spring-when-possible t)
 '(truncate-lines t)
 '(truncate-partial-width-windows nil)
 '(vc-annotate-background "#FFFFFD")
 '(vc-annotate-color-map
   (quote
    ((20 . "#D5D2C8")
     (40 . "#B0ADA2")
     (60 . "#B0ADA2")
     (80 . "#737063")
     (100 . "#737063")
     (120 . "#4E4B3D")
     (140 . "#4E4B3D")
     (160 . "#373426")
     (180 . "#373426")
     (200 . "#373426")
     (220 . "#292617")
     (240 . "#292617")
     (260 . "#292617")
     (280 . "#201D0E")
     (300 . "#201D0E")
     (320 . "#201D0E")
     (340 . "#1B1809")
     (360 . "#1B1809"))))
 '(vc-annotate-very-old-color "#4E4B3D")
 '(web-mode-code-indent-offset 2 t)
 '(web-mode-markup-indent-offset 2 t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(hl-line ((t (:background "#181818")))))
