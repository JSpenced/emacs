;; -*- mode: Emacs-Lisp -*-
;; This is bindings loaded by user.el
(setq ns-function-modifier 'hyper)  ; make Fn key do Hyper
;; (setq ns-function-modifier 'hyper)  ; make Fn key do Hyper
(define-key input-decode-map [?\C-m] [C-m])
(global-set-key (kbd "<C-m>") 'exchange-point-and-mark)
(global-set-key (kbd "s-h") 'help-command)
(global-set-key (kbd "s-h s-h") 'ns-do-hide-emacs)
(global-set-key (kbd "s-H") 'ns-do-hide-others)
(global-set-key (kbd "H-h") 'ns-do-hide-others)
(global-set-key [(super ?h)] 'help-command)
(global-set-key [(control ?h)] 'delete-backward-char)
(global-set-key (kbd "M-h") 'jj/backward-delete-word)
(global-set-key (kbd "M-s p") 'mark-paragraph)
(global-set-key (kbd "M-s M-p") 'mark-paragraph)
(define-key org-mode-map (kbd "M-s M-p") 'org-mark-element)
(define-key org-mode-map (kbd "M-s p") 'org-mark-element)
(define-key org-mode-map (kbd "M-h") 'jj/backward-delete-word)
(global-set-key (kbd "C-x 2") 'jj/split-window-vertically)
(global-set-key (kbd "C-x 3") 'jj/split-window-horizontally)

;; (define-key org-mode-map (kbd "<C-m>") 'exchange-point-and-mark)
;; unset C- and M- digit keys
(define-prefix-command 'comment-map)
(global-set-key (kbd "s-/") 'comment-map)
(global-set-key (kbd "s-/ s-/") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "s-/ /") 'comment-or-uncomment-region)
(global-set-key (kbd "s-/ r") 'comment-or-uncomment-region)
(global-set-key (kbd "s-/ R") 'whole-line-or-region-uncomment-region)
(global-set-key (kbd "s-/ l") 'whole-line-or-region-comment-region)
(global-set-key (kbd "s-/ L") 'whole-line-or-region-uncomment-region)
(global-set-key (kbd "s-/ s") 'jj/comment-or-uncomment-sexp)
(global-set-key (kbd "s-/ S") 'jj/uncomment-sexp)
(global-set-key (kbd "s-/ u") 'whole-line-or-region-uncomment-region)
(global-set-key (kbd "s-/ p") 'evilnc-comment-or-uncomment-paragraphs)
(global-set-key (kbd "s-/ g") 'evilnc-comment-or-uncomment-to-the-line)
(global-set-key (kbd "s-/ k") 'comment-kill)
(global-set-key (kbd "s-/ d") 'comment-dwim)
(global-set-key (kbd "s-/ b") 'comment-box)
(define-key lispy-mode-map (kbd "s-/ <return>") 'lispy-comment)
(define-key lispy-mode-map (kbd "s-/ ;") 'lispy-comment)
(global-set-key (kbd "C-x C-;") 'evilnc-comment-or-uncomment-lines)

;; Match sublime bindings and s-maps
(global-set-key (kbd "M-t") 'jj/ivy-switch-buffer-use-virtual)
(global-set-key (kbd "s-b") 'ivy-switch-buffer)

;;;;;;;;;; Counsel
(define-prefix-command 'commandpalette-map)
(global-set-key (kbd "s-P") 'commandpalette-map)
(global-set-key (kbd "s-P s-P") 'counsel-M-x)
(global-set-key (kbd "C-x B") 'jj/ivy-switch-buffer-use-virtual)
(global-set-key (kbd "s-P b") 'counsel-bookmark)
(global-set-key (kbd "s-P B") 'counsel-bookmarked-directory)
(global-set-key (kbd "s-P d") 'counsel-bookmarked-directory)
(global-set-key (kbd "s-P P") 'winner-undo)
(global-set-key (kbd "s-P N") 'winner-redo)
(global-set-key (kbd "s-P g a") 'counsel-ag)
(global-set-key (kbd "s-P g p") 'counsel-pt)
(global-set-key (kbd "s-P g r") 'counsel-rg)
(global-set-key (kbd "s-P a") 'counsel-rg)
(global-set-key (kbd "s-P g f") 'counsel-git)
(global-set-key (kbd "s-P g g") 'counsel-git-grep)
(global-set-key (kbd "s-P g o") 'ivy-org-jump-to-open-headline)
(global-set-key (kbd "C-c C-S-j") 'ivy-org-jump-to-open-headline)
(global-set-key (kbd "s-P r") 'counsel-recentf)
(global-set-key (kbd "s-P l") 'jj/emacs-lock-mode)
(global-set-key (kbd "s-P L") 'jj/emacs-lock-mode-all)
(global-set-key (kbd "s-P i") 'ivy-resume)
(global-set-key (kbd "s-P t") 'jj/find-open-last-killed-file)
(define-key global-map (kbd "C-S-t") 'jj/find-open-last-killed-file)
(define-key global-map (kbd "s-T") 'jj/find-open-last-killed-file)
(global-set-key (kbd "s-P C-q") 'jj/toggle-window-dedicated)
;; Window bindings
(define-prefix-command 'cp-window-map)
(global-set-key (kbd "s-P w") 'cp-window-map)
(global-set-key (kbd "s-P w l") 'jj/toggle-window-dedicated)
(global-set-key (kbd "s-P w k") 'ace-delete-other-windows)
(global-set-key (kbd "s-P w K") 'jj/other-window-kill-buffer)
(global-set-key (kbd "s-P w q") 'jj/quit-help-windows)
(global-set-key (kbd "s-P w 1") 'delete-other-windows)
(global-set-key (kbd "s-P 2") 'jj/split-window-below-and-balance)
(global-set-key (kbd "s-P 3") 'jj/split-window-right-and-balance)
(global-set-key (kbd "s-P w 2") 'jj/split-window-below-and-balance)
(global-set-key (kbd "s-P w b") 'balance-windows)
(global-set-key (kbd "s-P w 3") 'jj/split-window-right-and-balance)
(global-set-key (kbd "s-P w 4") 'jj/split-window-4)
(global-set-key (kbd "s-P w p") 'winner-undo)
(global-set-key (kbd "s-P w n") 'winner-redo)
(global-set-key (kbd "s-P w o") 'ivy-switch-buffer-other-window)
(global-set-key (kbd "s-P w t") 'jj/window-split-toggle)
(global-set-key (kbd "s-P w d") 'delete-window)
(global-set-key (kbd "s-P w D") 'delete-other-windows)
(global-set-key (kbd "s-P w c") 'jj/visual-fill-column-center-text-toggle)
(global-set-key (kbd "s-P w C") 'delete-other-windows)
(global-set-key (kbd "s-P w s-w") 'delete-frame)
(global-set-key (kbd "s-P w s-k") 'delete-frame)
(global-set-key (kbd "s-P w s-d") 'delete-frame)
(global-set-key (kbd "s-P w s-n") 'make-frame)
(global-set-key (kbd "s-P w s-c") 'make-frame)
(global-set-key (kbd "s-P k") 'kill-current-buffer)
(global-set-key (kbd "s-P K") 'jj/kill-protected-buffer)
(global-set-key (kbd "C-x w") 'delete-window)
(global-set-key (kbd "C-x W") 'delete-other-windows)
(global-set-key (kbd "C-x o") 'ace-window)
(global-set-key (kbd "s-P w v") 'flip-frame)
(global-set-key (kbd "s-P w h") 'flop-frame)
(define-prefix-command 'cp-window-transpose-map)
(global-set-key (kbd "s-P w f") 'cp-window-transpose-map)
(global-set-key (kbd "s-P w f t") 'transpose-frame)
(global-set-key (kbd "s-P w f v") 'flip-frame)
(global-set-key (kbd "s-P w f d") 'delete-frame)
(global-set-key (kbd "s-P w f c") 'make-frame)
(global-set-key (kbd "s-P w f 2") 'flip-frame)
(global-set-key (kbd "s-P w f h") 'flop-frame)
(global-set-key (kbd "s-P w f r") 'rotate-frame)
(global-set-key (kbd "C-x K") 'jj/other-window-kill-buffer)
(global-set-key (kbd "C-c q") 'jj/quit-help-windows)
(global-set-key (kbd "C-x 4 t") 'jj/window-split-toggle)
					; Set same binding as in sublime to take emacs full screen c-x 1
(global-set-key (kbd "M-s-<return>") 'jj/delete-other-windows-or-winner-undo-max-pane)
(global-set-key (kbd "C-M-s-<return>") 'jj/delete-other-windows-switch-other-buffer)
(global-set-key (kbd "<C-s-268632074>") 'previous-multiframe-window)
(global-set-key (kbd "<C-s-268632075>") 'next-multiframe-window)
(global-set-key (kbd "s-'") 'ace-window)
(global-set-key (kbd "C-M-s-6") 'make-frame)

(define-prefix-command 'cp-select-map)
(global-set-key (kbd "s-P s") 'cp-select-map)
(global-set-key (kbd "s-P s p") 'mark-paragraph)


;; Input method and key binding configuration.
(global-set-key (kbd "M-s M-s") 'jj/swiper-symbol-at-point)
(global-set-key (kbd "M-s s") 'jj/counsel-grep-or-swiper-symbol-at-point)
;; (global-set-key (kbd "M-s M-.") 'jj/swiper-symbol-at-point)
(global-set-key (kbd "M-s w") 'jj/counsel-grep-or-swiper-word-at-point)
(global-set-key (kbd "M-s j") 'jj/counsel-grep-or-swiper-region)
(global-set-key (kbd "M-s M-w") 'jj/swiper-word-at-point)
(global-set-key (kbd "M-s M-e") 'eww-search-words)
(global-set-key (kbd "M-s M-m") 'manual-entry)
(global-set-key (kbd "M-s a") 'swiper-all)
;; Uses visueal regex steroids but for regular use vr/select-replace to select the engine
(global-set-key (kbd "M-s c") 'vr/mc-mark)
(global-set-key (kbd "M-s r") 'vr/replace)
(global-set-key (kbd "M-s q") 'vr/query-replace)
(global-set-key (kbd "C-M-s") 'vr/isearch-forward)
(global-set-key (kbd "C-M-r") 'vr/isearch-backward)
(global-set-key (kbd "C-r") 'jj/swiper-region)
;; (global-set-key (kbd "C-s") 'jj/counsel-grep-or-swiper-region)
(global-set-key (kbd "C-c s") 'swiper-all)
(define-key swiper-map (kbd "M-s-å") 'swiper-mc)
(define-key ivy-minibuffer-map (kbd "M-y") 'ivy-next-line)
;; (define-key ivy-minibuffer-map (kbd "M-s m") 'ivy-restrict-to-matches)
(define-key ivy-minibuffer-map (kbd "C-r") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "C-r") 'ivy-previous-line)
(define-key ivy-minibuffer-map (kbd "C-d") 'delete-backward-char)
;; (define-key ivy-minibuffer-map (kbd "C-r") 'ivy-reverse-i-search)
(define-key ivy-minibuffer-map (kbd "C-w") 'whole-line-or-region-kill-region)
(define-key ivy-minibuffer-map (kbd "C-c <C-m>") 'ivy-call)

;; (global-set-key (kbd "s-P") 'counsel-M-x)

;; Creates ctrl+z as a prefix key like x and c
(define-prefix-command 'ctrlz-map)
(global-set-key (kbd "C-z") 'ctrlz-map)
(global-set-key (kbd "C-z C-x") 'ace-jump-zap-to-char-dwim)
(global-set-key (kbd "C-z x") 'ace-jump-zap-to-char)
(define-key ctrlz-map (kbd "C-z") 'ace-jump-zap-up-to-char-dwim)
(define-key ctrlz-map (kbd "z") 'ace-jump-zap-up-to-char)
;; (global-set-key (kbd "C-z")  'ace-jump-zap-up-to-char-dwim)
(global-set-key (kbd "M-z")  'ace-jump-zap-to-char)
(global-set-key (kbd "M-Z")  'ace-jump-zap-up-to-char)
(global-set-key (kbd "M-\\")  'cycle-spacing)

;; Kill lines and words (currently set to delete except for kill line)
(global-set-key (kbd "<M-s-backspace>") 'kill-whole-line)
;; (global-set-key (kbd "C-S-k") 'jj/backward-kill-line) ; Ctrl+Shift+k
;; (global-set-key (kbd "M-d") 'kill-word)
;; (global-set-key (kbd "<M-backspace>") 'backward-kill-word)
;; Replace putting kill word and other things on the kill ring
;; (global-set-key (kbd "C-M-k") #'jj/forward-kill-sexp-or-dir)
;; (global-set-key (kbd "<C-M-backspace>") #'jj/backward-kill-sexp-or-dir)
;; (global-set-key (read-kbd-macro "<C-M-backspace>") 'backward-kill-sexp)
(global-set-key (kbd "<C-M-s-268632075>") 'whole-line-or-region-kill-region)
(global-set-key (kbd "M-s-˚") 'jj/delete-whole-line)
(global-set-key (kbd "C-w") 'whole-line-or-region-kill-region)
(define-key easy-kill-base-map (kbd "C-w") 'easy-kill-region)
(define-key easy-kill-base-map (kbd "k") 'easy-kill-region)
(define-key easy-kill-base-map (kbd "K") 'easy-kill-delete-region)
(define-key easy-kill-base-map (kbd "o") 'easy-kill-er-expand)
(define-key easy-kill-base-map (kbd "M-w") 'easy-kill-unhighlight)
(define-key easy-kill-base-map (kbd "h") 'easy-kill-unhighlight)
(define-key easy-kill-base-map (kbd "j") 'easy-kill-unhighlight)
(define-key easy-kill-base-map (kbd "g") 'easy-kill-unhighlight)
(define-key easy-kill-base-map (kbd "n") 'easy-kill-thing)
(define-key easy-kill-base-map (kbd "a") 'easy-kill-append)
(define-key easy-kill-base-map (kbd "A") 'easy-kill-append)
(define-key easy-kill-base-map (kbd "i") 'easy-kill-er-unexpand)
(define-key easy-kill-base-map (kbd "<backspace>") 'easy-kill-delete-region)
(global-set-key (kbd "s-P m") 'easy-kill-on-string-to-char-backward)
(define-key easy-kill-base-map (kbd "m") 'easy-kill-mark-region)
(global-set-key (kbd "<C-M-s-backspace>") 'whole-line-or-region-kill-region)
(global-set-key (kbd "C-M-k") 'jj/delete-sexp)
(global-set-key (kbd "M-K") 'kill-sexp)
(global-set-key (kbd "<escape> C-M-k") 'kill-sexp)
(global-set-key (kbd "<escape> <C-M-backspace>") 'backward-kill-sexp)
(global-set-key (kbd "<C-s-backspace>") 'backward-kill-sexp)
(global-set-key (kbd "<escape> <C-backspace>") 'backward-kill-word)
(global-set-key (kbd "C-S-k") 'jj/delete-line) ; Ctrl+Shift+k
(global-set-key (read-kbd-macro "<s-backspace>") 'jj/delete-line-backward)
(global-set-key (read-kbd-macro "<escape> <s-backspace>") 'jj/kill-line-backward)
(global-set-key (kbd "M-d") 'jj/delete-word)
(global-set-key (kbd "<M-backspace>") 'jj/backward-delete-word)
;; (global-set-key (kbd "C-k") 'jj/delete-line)
(global-set-key (kbd "<C-M-backspace>") #'jj/backward-delete-sexp-or-dir)
(global-set-key (kbd "s-D") 'jj/duplicate-line-or-region)
(global-set-key (kbd "C-c d") 'jj/duplicate-line-or-region)

					; (global-set-key (read-kbd-macro "<C-x j>") 'ess/org-show-just-me)
(define-key org-mode-map (kbd "C-x n o") 'jj/org-show-just-me)
(define-key org-mode-map (kbd "C-x n <tab>") 'jj/org-show-just-me)
(define-key org-mode-map (kbd "C-c k") 'org-metaright)
(define-key org-mode-map (kbd "C-c C-h") 'org-metaleft)
(define-key org-mode-map (kbd "C-c C-S-j") 'ivy-org-jump-to-open-headline)
(define-key org-mode-map (kbd "C-c C-j") 'ivy-org-jump-to-heading)
(define-key org-mode-map (kbd "C-c j") 'counsel-org-goto-all)
(define-key org-mode-map (kbd "C-c J") 'ivy-org-jump-to-heading-in-directory)
					;(define-key org-mode-map (kbd "C-c i") 'org-do-demote)
					;(define-key org-mode-map (kbd "C-c u") 'org-do-promote) 'org-indent-item 'org-outdent-item
;; (define-key org-mode-map (kbd "C-c i") 'org-shiftmetaright)
;; (define-key org-mode-map (kbd "C-c u") 'org-shiftmetaleft)
(define-key org-mode-map (kbd "C-c C-S-k") 'org-shiftmetaright)
(define-key org-mode-map (kbd "C-c C-S-j") 'org-shiftmetaleft)
(define-key org-mode-map (kbd "M-=") 'org-ctrl-c-minus)
(define-key org-mode-map (kbd "s-B") 'org-bold-region-or-point)
(define-key org-mode-map (kbd "s-I") 'org-italics-region-or-point)
(define-key org-mode-map (kbd "s-V") 'org-verbatim-region-or-point)
(define-key org-mode-map (kbd "s-C") 'org-code-region-or-point)
(define-key org-mode-map (kbd "s-M") 'org-latex-math-region-or-point)
(define-key org-mode-map (kbd "C-c n") 'jj/org-move-headline-next-top-level)
(define-key org-mode-map (kbd "C-c m") 'jj/org-move-headline-next-second-level)
(define-key org-mode-map (kbd "C-c b b") 'jj/org-metaleft-next-line-previous-item)
(define-key org-mode-map (kbd "C-c b j") 'jj/org-metaleft-next-line-beginning-item)
;; Moved into orgtbl-mode-hook
;; (define-key org-mode-map (kbd "S-TAB") 'org-table-previous-field)

(add-hook 'orgtbl-mode-hook
	  (lambda ()
	    (define-key orgtbl-mode-map (kbd "S-TAB") 'org-table-previous-field)
	    (define-key orgtbl-mode-map (kbd "M-C-n") 'org-table-next-field)
	    (define-key orgtbl-mode-map (kbd "M-C-p") 'org-table-previous-field)
	    ))

					; First is Old binding if ; not set to return
(global-set-key (kbd "C-;") 'dabbrev-expand)
(global-set-key (kbd "s-RET") 'dabbrev-expand)
(global-set-key (kbd "s-<return>") 'dabbrev-expand)
;; Possibly change later so j goes to a menu doing counsel commands
(define-key lisp-mode-map (kbd "C-c C-j") 'counsel-imenu)
(define-key lisp-mode-map (kbd "C-c j") 'lispy-goto)
(define-key emacs-lisp-mode-map (kbd "C-c C-j") 'counsel-imenu)
(define-key emacs-lisp-mode-map (kbd "C-c j") 'lispy-goto)
(define-key python-mode-map (kbd "C-c C-j") 'counsel-imenu)
(define-key python-mode-map (kbd "C-c j") 'counsel-semantic-or-imenu)
(global-set-key (kbd "C-x C-r") 'jj/find-alternative-file-with-sudo)

(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-S-s-e") 'mc/edit-lines)
(global-set-key (kbd "C-S-s-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-S-s-p") 'mc/mark-previous-like-this)
(define-key mc/keymap (kbd "<return>") nil)
(define-key mc/keymap (kbd "C-S-s-l") 'mc/unmark-next-like-this)
(define-key mc/keymap (kbd "C-S-s-h") 'mc/unmark-previous-like-this)
(define-key mc/keymap (kbd "C-S-s-j") 'mc/skip-to-previous-like-this)
(define-key mc/keymap (kbd "C-S-s-k") 'mc/skip-to-next-like-this)
(global-unset-key (kbd "C-S-<down-mouse-1>"))
(global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
;; Could make this to be a local key map
(global-set-key (kbd "M-s-å") 'mc/mark-all-like-this)
;; Backup commands
(define-key mc/keymap (kbd "M-s M-n") 'mc/insert-numbers)
(define-key mc/keymap (kbd "M-s M-l") 'mc/insert-letters)
;; (define-key mc/keymap (kbd "m-s m-d") 'mc/mark-next-like-this)
;; (define-key mc/keymap (kbd "m-s m-d") 'mc/mark-next-like-this)
;; (define-key mc/keymap (kbd "m-s m-r") 'mc/mark-previous-like-this)
;; (define-key mc/keymap (kbd "m-s m-n") 'mc/unmark-next-like-this)
;; (define-key mc/keymap (kbd "m-s m-p") 'mc/unmark-previous-like-this)
;; (define-key mc/keymap (kbd "M-s M-s") 'mc/skip-to-next-like-this)


(global-set-key (kbd "S-s-SPC") 'er/expand-region)
;; expand region overwrites the below hot key so added
(define-key org-mode-map (kbd "C-c g") 'org-mark-ring-goto)
(define-key org-mode-map (kbd "C-c C-g") 'org-mark-ring-goto)

;; Setup copy and paste for s-c and s-v
(define-key org-mode-map (kbd "s-v") 'org-yank)
(global-set-key (kbd "s-v") 'yank)
(global-set-key (kbd "s-c") 'kill-ring-save)

;; For avy which is similar to ace-jump
(define-prefix-command 'avy-jump-map)
(global-set-key (kbd "C-x j") 'avy-jump-map)
(global-set-key (kbd "C-x j l") 'avy-goto-line)
(global-set-key (kbd "C-x j C-a") 'avy-goto-line)
(global-set-key (kbd "C-x j e") 'avy-goto-end-of-line)
(global-set-key (kbd "C-x j w") 'avy-goto-word-1)
(global-set-key (kbd "C-x j c") 'avy-goto-char-2)
(global-set-key (kbd "C-x j C-e") 'avy-goto-end-of-line)
(global-set-key (kbd "C-x j t") 'avy-goto-char-timer)
;; Don't work now due to current buffer jump in dired mapped to this
;; (global-set-key (kbd "C-x C-j j") 'avy-goto-word-1)
;; (global-set-key (kbd "C-x C-j k") 'avy-goto-char-2)
;; (global-set-key (kbd "C-x C-j l") 'avy-goto-line)
(global-set-key (kbd "s-.") 'avy-goto-char-timer)
(define-key org-mode-map (kbd "C-x j l") 'ivy-org-jump-to-visible-headline)
(define-key org-mode-map (kbd "s-,") 'ivy-org-jump-to-visible-headline)


;; Use to disable flyspell-mode by default
;; (dolist (hook '(org-mode-hook))
;;   (add-hook hook (lambda () (flyspell-mode 0)) t))
;; (define-key flyspell-mode-map (kbd "C-;") 'dabbrev-expand)

(define-prefix-command 'dired-h-prefix-map)
(define-key dired-mode-map (kbd "h") 'dired-h-prefix-map)
(define-key dired-h-prefix-map (kbd "P") 'jj/dired-up-directory-follow-symlink-up)
(define-key dired-h-prefix-map (kbd "^") 'jj/dired-up-directory-follow-symlink-up)
;; (define-key dired-h-prefix-map (kbd "p") 'jj/dired-up-directory-follow-symlink-up)
(define-key dired-h-prefix-map (kbd "f") 'jj/dired-find-file-following-symlinks)
(define-key dired-h-prefix-map (kbd "a") 'jj/dired-find-alternate-file-following-symlinks)
(define-key dired-h-prefix-map (kbd "]") 'jj/dired-find-alternate-file-following-symlinks)
(define-key dired-h-prefix-map (kbd "v") 'jj/dired-view-file-following-symlinks)
(define-key dired-h-prefix-map (kbd "s") 'jj/dired-cycle-switches)
(define-key dired-h-prefix-map (kbd "p") 'peep-dired)
(define-key dired-h-prefix-map (kbd "t") 'jj/dired-sort-by-time-switch-toggle)
(define-key dired-h-prefix-map (kbd "RET") 'jj/dired-advertised-find-file-following-symlinks)

(define-prefix-command 'dired-question-prefix-map)
(define-key dired-mode-map (kbd "?") 'dired-question-prefix-map)
(define-key dired-mode-map (kbd "_") 'jj/dired-rename-space-to-underscore)
;; (define-key dired-mode-map (kbd "-") 'jj/dired-rename-space-to-hyphen)
(define-key dired-mode-map (kbd "<escape> -") 'jj/dired-rename-space-to-hyphen)
(define-key dired-mode-map (kbd "Q") 'kill-current-buffer)
(define-key dired-mode-map (kbd "X") 'dired-do-async-shell-command)
(define-key dired-mode-map (kbd "9") 'jj/dired-rename-hyphen-to-underscore)
(define-key dired-mode-map (kbd "0") 'jj/dired-rename-underscore-to-hyphen)
(define-key dired-mode-map (kbd "8") 'jj/dired-rename-hyphen-or-underscore-to-space)
(define-key dired-mode-map (kbd "C-S-SPC") 'jj/dired-rename-hyphen-or-underscore-to-space)
(define-key dired-question-prefix-map (kbd "?") 'dired-summary)

(define-key dired-mode-map (kbd "C-x M-o") 'dired-omit-switch)
(global-set-key (kbd "C-c t") 'jj/open-iterm-terminal-here)
;; (add-hook 'dired-mode-hook (lambda () (dired-omit-mode 1)))

(define-prefix-command 'jj-flyspell-mode-map)
(global-set-key (kbd "M-s f") 'jj-flyspell-mode-map)
(eval-after-load "flyspell"
  '(progn
     (define-key flyspell-mode-map (kbd "s-RET") 'dabbrev-expand)
     ;; (define-key flyspell-mode-map (kbd "M-p") 'flyspell-auto-correct-previous-word)
     (define-key flyspell-mode-map (kbd "C-.") 'flyspell-auto-correct-previous-word)
     (define-key flyspell-mode-map (kbd "C-M-i") 'flyspell-auto-correct-word)
     (define-key flyspell-mode-map (kbd "M-s f a") 'jj/ispell-append-current-and-sort)
     (define-key flyspell-mode-map (kbd "M-s f w") 'ispell-word)
     (define-key flyspell-mode-map (kbd "M-s f i") 'ispell-word)
     (define-key flyspell-mode-map (kbd "M-s f p") 'flyspell-auto-correct-previous-word)
     (define-key flyspell-mode-map (kbd "M-s f f") 'flyspell-correct-previous-word-generic)
     ))

;; Archive-mode is arc-mode
(eval-after-load "arc-mode"
  '(progn
     (define-key archive-mode-map (kbd "U") 'archive-unmark-all-files)
     (define-key archive-mode-map (kbd "<M-backspace>") 'archive-unmark-all-files)))

(eval-after-load "dired"
  '(progn
     ;; Think this can be replaced with browse-url-of-dired-file
     ;; (define-key dired-mode-map (kbd "z") 'browse-url-of-dired-file)
     (define-key dired-mode-map (kbd "z")
       (lambda () (interactive)
	 (let ((fn (dired-get-file-for-visit)))
	   (start-process "default-app" nil "open" fn))))
     (define-key dired-mode-map (kbd "V")
       (lambda () (interactive)
	 (let ((fn (dired-get-file-for-visit)))
	   (start-process "default-app" nil "open" "-g" fn))))
     (define-key dired-mode-map (kbd "C-c C-o") 'jj/show-in-path-finder)
     (define-key dired-mode-map (kbd "P") 'dired-up-directory)
     (define-key dired-mode-map (kbd "<M-backspace>") 'dired-unmark-all-files)
     (define-key dired-mode-map (kbd "N") 'dired-view-file)
     (define-key dired-mode-map (kbd "U") 'dired-unmark-all-marks)
     (define-key dired-mode-map (kbd "[") 'jj/dired-go-up-directory-same-buffer)
     (define-key dired-mode-map (kbd "]") 'dired-find-alternate-file)
     (define-key dired-mode-map (kbd "RET") 'dired-advertised-find-file)
     (define-key dired-mode-map (kbd "C-M-s-4") 'dired-kill-subdir)
     (define-key dired-mode-map (kbd "'") 'dired-kill-subdir)
     (define-key dired-mode-map (kbd "_") 'jj/dired-rename-space-to-underscore)
     (define-key dired-mode-map (kbd "-") 'jj/dired-rename-space-to-hyphen)
     (define-key dired-mode-map (kbd "c") 'jj/dired-create-file)
     (define-key dired-mode-map (kbd "K") 'jj/dired-kill-subdir-pop-mark)
     (define-key dired-mode-map (kbd "\"") 'dired-kill-tree)
     (define-key dired-mode-map (kbd "e") 'jj/counsel-find-name-everything)
     ;; if you are using ido,you'd better disable ido for dired
     ;; (define-key (cdr ido-minor-mode-map-entry) [remap dired] nil) ;in ido-setup-hook
     ;; Possibly change this to counsel-bookmark
     (define-key dired-mode-map "b" 'counsel-bookmarked-directory)
     (define-key dired-mode-map "B" 'counsel-bookmark)
     (define-key dired-mode-map "<" 'dired)
     (define-key dired-mode-map (kbd "w") 'dired-ranger-copy)
     (define-key dired-mode-map (kbd "W") 'dired-copy-filename-as-kill)
     (define-key dired-mode-map (kbd "E") 'dired-ranger-move)
     (define-key dired-mode-map (kbd "M") 'dired-ranger-move)
     ;; Originally dired-do-chmod mapped to M
     ;; (define-key dired-mode-map (kbd "M") 'dired-do-chmod)
     (define-key dired-mode-map (kbd "Y") 'dired-ranger-paste)
     (defvar dired-narrow-filter-map
       (let ((map (make-sparse-keymap)))
	 (define-key map "," 'dired-narrow)
	 (define-key map "r" 'dired-narrow-regexp)
	 (define-key map "f" 'dired-narrow-fuzzy)
	 map)
       "Keymap used for filtering files.")
     (define-key dired-mode-map (kbd ",") dired-narrow-filter-map)

     ))
(defvar grep-and-find-map (make-sparse-keymap))
(define-key global-map "\C-xf" grep-and-find-map)
;; (define-key global-map "\C-xfg" 'find-grep-dired)
;; (define-key global-map "\C-xfn" 'find-name-dired)
(define-key global-map "\C-xff" 'jj/counsel-find-name-everything)
(define-key global-map "\C-xfe" 'jj/counsel-find-name-everything)
;; (define-key global-map "\C-xfd" 'find-dired)
(define-key global-map (kbd "\C-xfa") 'counsel-ag)
(define-key global-map (kbd "\C-xfp") 'counsel-pt)
(define-key global-map (kbd "\C-xfr") 'counsel-rg)
(define-key global-map (kbd "\C-xf\C-r") 'jj/find-file-root)
(define-key global-map (kbd "\C-xfr") 'counsel-rg)
(define-key global-map (kbd "\C-xfh") 'counsel-git)
(define-key global-map (kbd "\C-xfg") 'counsel-git-grep)
(define-key global-map (kbd "\C-xf\C-f") 'counsel-git)
(define-key global-map (kbd "\C-xf\C-g") 'counsel-git-grep)
(define-key global-map (kbd "\C-xfo") 'ivy-org-jump-to-open-headline)
(define-key global-map "\C-xg" 'counsel-rg)
;; (define-key global-map "\C-xg" 'jj/counsel-find-name-everything)

(global-set-key (kbd "C-x C-d") 'jj/ivy-dired-recent-dirs)
(global-set-key (kbd "C-x s-d") 'list-directory)

(global-set-key (kbd "C-s-<tab>") 'jj/switch-to-previous-buffer)
(global-set-key (kbd "<escape> <tab>") 'jj/switch-to-previous-buffer)
(global-set-key (kbd "C-S-<tab>") 'jj/switch-to-previous-buffer)

(define-key process-menu-mode-map (kbd "C-k") 'jj/delete-kill-process-at-point)

(global-set-key (kbd "M-,") 'goto-last-change)

;;; just quick to reach
(global-set-key (kbd "C-M-s-9") 'jj/goto-last-change)
(global-set-key [remap kill-ring-save] 'easy-kill)
(global-set-key [remap mark-sexp] 'easy-mark)
(global-set-key (kbd "M-@") 'easy-mark)

(define-key google-this-mode-submap "T" #'jj/google-this-background)
(define-key google-this-mode-submap "N" #'jj/google-this-noconfirm-background)
(define-key google-this-mode-submap "b" #'jj/google-this-noconfirm-background)
(define-key google-this-mode-submap "W" #'jj/google-this-word-background)
(define-key google-this-mode-submap "F" #'jj/google-this-forecast-background)

(use-package eyebrowse
  :diminish eyebrowse-mode
  :config (progn
	    (define-prefix-command 'jj-eyebrowse-map)
	    (global-set-key (kbd "M-1") 'jj-eyebrowse-map)
	    (define-key jj-eyebrowse-map (kbd "C-c")	'eyebrowse-create-window-config)
	    (define-key jj-eyebrowse-map (kbd "\"")	'eyebrowse-close-window-config)
	    (define-key jj-eyebrowse-map (kbd "k")	'eyebrowse-close-window-config)
	    (define-key jj-eyebrowse-map (kbd "'")	'eyebrowse-last-window-config)
	    (define-key jj-eyebrowse-map (kbd ",")	'eyebrowse-rename-window-config)
	    (define-key jj-eyebrowse-map (kbd ".")	'eyebrowse-switch-to-window-config)
	    (define-key jj-eyebrowse-map (kbd "b")	'eyebrowse-switch-to-window-config)
	    (define-key jj-eyebrowse-map (kbd "<return>")	'eyebrowse-switch-to-window-config)
	    (define-key jj-eyebrowse-map (kbd "0")	'eyebrowse-switch-to-window-config-0)
	    (define-key jj-eyebrowse-map (kbd "1")	'eyebrowse-switch-to-window-config-1)
	    (define-key jj-eyebrowse-map (kbd "M-1")	'eyebrowse-last-window-config)
	    (define-key jj-eyebrowse-map (kbd "2")	'eyebrowse-switch-to-window-config-2)
	    (define-key jj-eyebrowse-map (kbd "3")	'eyebrowse-switch-to-window-config-3)
	    (define-key jj-eyebrowse-map (kbd "4")	'eyebrowse-switch-to-window-config-4)
	    (global-set-key (kbd "M-2")	'eyebrowse-switch-to-window-config-2)
	    (global-set-key (kbd "M-3")	'eyebrowse-switch-to-window-config-3)
	    (global-set-key (kbd "M-4")	'eyebrowse-switch-to-window-config-4)
	    (global-set-key (kbd "M-5")	'eyebrowse-switch-to-window-config-5)
	    (define-key jj-eyebrowse-map (kbd "5")	'eyebrowse-switch-to-window-config-5)
	    (define-key jj-eyebrowse-map (kbd "6")	'eyebrowse-switch-to-window-config-6)
	    (define-key jj-eyebrowse-map (kbd "7")	'eyebrowse-switch-to-window-config-7)
	    (define-key jj-eyebrowse-map (kbd "8")	'eyebrowse-switch-to-window-config-8)
	    (define-key jj-eyebrowse-map (kbd "9")	'eyebrowse-switch-to-window-config-9)
	    (global-set-key  (kbd "M-5")	'eyebrowse-switch-to-window-config-5)
	    (global-set-key  (kbd "M-6")	'eyebrowse-switch-to-window-config-6)
	    (global-set-key  (kbd "M-7")	'eyebrowse-switch-to-window-config-7)
	    (global-set-key  (kbd "M-8")	'eyebrowse-switch-to-window-config-8)
	    (global-set-key  (kbd "M-9")	'eyebrowse-switch-to-window-config-9)
	    (define-key jj-eyebrowse-map (kbd "<f1>")	'eyebrowse-switch-to-window-config-11)
	    (define-key jj-eyebrowse-map (kbd "<f2>")	'eyebrowse-switch-to-window-config-12)
	    (define-key jj-eyebrowse-map (kbd "<f3>")	'eyebrowse-switch-to-window-config-13)
	    (define-key jj-eyebrowse-map (kbd "<f4>")	'eyebrowse-switch-to-window-config-14)
	    (define-key jj-eyebrowse-map (kbd "<f5>")	'eyebrowse-switch-to-window-config-15)
	    (define-key jj-eyebrowse-map (kbd "<f6>")	'eyebrowse-switch-to-window-config-16)
	    (define-key jj-eyebrowse-map (kbd "<f7>")	'eyebrowse-switch-to-window-config-17)
	    (define-key jj-eyebrowse-map (kbd "<f8>")	'eyebrowse-switch-to-window-config-18)
	    (define-key jj-eyebrowse-map (kbd "<f9>")	'eyebrowse-switch-to-window-config-19)
	    (define-key jj-eyebrowse-map (kbd "<f10>")	'eyebrowse-switch-to-window-config-20)
	    (define-key jj-eyebrowse-map (kbd "<f11>")	'eyebrowse-switch-to-window-config-21)
	    (define-key jj-eyebrowse-map (kbd "<f12>")	'eyebrowse-switch-to-window-config-22)
	    (global-set-key (kbd "M-<f12>")	'eyebrowse-switch-to-window-config-22)
	    (define-key jj-eyebrowse-map (kbd "<")	'eyebrowse-prev-window-config)
	    (define-key jj-eyebrowse-map (kbd ">")	'eyebrowse-next-window-config)
	    (define-key jj-eyebrowse-map (kbd "'")	'eyebrowse-next-window-config)
	    (define-key jj-eyebrowse-map (kbd "c")	'eyebrowse-create-window-config)
	    (eyebrowse-mode t)
	    (setq eyebrowse-new-workspace nil)
	    (setq eyebrowse-switch-back-and-forth t)))


;; Used to just define a function in a specific mode
					; (with-eval-after-load 'coffee-mode
					;   (define-key coffee-mode-map (kbd "C-c C-c") 'coffee-compile-file)
					;   (define-key erlang-mode-map (kbd "C-c C-m") 'coffee-make-coffee)
					;   ;; Add other coffee commands
					; )

;;;;;;;;;; Bookmarks
					; (global-set-key (read-kbd-macro "<C-x j>") 'bookmark-jump)
					; (global-set-key (read-kbd-macro "<C-c j>") 'bookmark-jump)
					; (global-set-key (read-kbd-macro "<C-x C-j>") 'bookmark-jump)
;; (global-set-key (read-kbd-macro "<C-x RET RET>") 'bookmark-set)
					; (global-set-key (read-kbd-macro "<C-c k>") 'bookmark-set)
