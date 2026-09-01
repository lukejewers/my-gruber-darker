;;; my-gruber-darker-theme.el --- Gruber Darker colour theme fork -*- lexical-binding: t; -*-

;; Copyright (C) 2026 Luke Jewers
;; Copyright (C) 2013-2016 Alexey Kutepov a.k.a rexim
;; Copyright (C) 2009-2010 Jason R. Blevins

;; Author: Luke Jewers <luke.jewers@gmail.com>
;; Maintainer: Luke Jewers <luke.jewers@gmail.com>
;; URL: https://github.com/lukejewers/my-gruber-darker
;; Version: 0.1.0
;; Package-Requires: ((emacs "28.1"))
;; Keywords: faces themes

;; Permission is hereby granted, free of charge, to any person
;; obtaining a copy of this software and associated documentation
;; files (the "Software"), to deal in the Software without
;; restriction, including without limitation the rights to use, copy,
;; modify, merge, publish, distribute, sublicense, and/or sell copies
;; of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:

;; The above copyright notice and this permission notice shall be
;; included in all copies or substantial portions of the Software.

;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
;; EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
;; MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
;; NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
;; BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
;; ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;; CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
;; SOFTWARE.

;;; Commentary:
;;
;; A variant of the Gruber Dark theme for BBEdit by John Gruber,
;; originally ported to Emacs by Jason Blevins and extended by Alexey
;; Kutepov.
;;
;; Installed like any `custom-theme-load-path' theme: M-x load-theme
;;   =my-gruber-darker.

;;; Code:

(deftheme my-gruber-darker
  "Gruber Darker theme for Emacs 28+."
  :background-mode 'dark
  :kind 'color-scheme)

(let ((gruber-darker-fg        "#e4e4ef")
      (gruber-darker-fg+1      "#f4f4ff")
      (gruber-darker-fg+2      "#f5f5f5")
      (gruber-darker-white     "#ffffff")
      (gruber-darker-black     "#000000")
      (gruber-darker-bg-1      "#101010")
      (gruber-darker-bg        "#181818")
      (gruber-darker-bg+1      "#282828")
      (gruber-darker-bg+2      "#453d41")
      (gruber-darker-bg+3      "#484848")
      (gruber-darker-bg+4      "#52494e")
      (gruber-darker-red-1     "#c73c3f")
      (gruber-darker-red       "#f43841")
      (gruber-darker-red+1     "#ff4f58")
      (gruber-darker-green     "#73c936")
      (gruber-darker-yellow    "#ffdd33")
      (gruber-darker-brown     "#cc8c3c")
      (gruber-darker-quartz    "#95a99f")
      (gruber-darker-niagara-2 "#303540")
      (gruber-darker-niagara-1 "#565f73")
      (gruber-darker-niagara   "#96a6c8")
      (gruber-darker-wisteria  "#9e95c7")
      ;; Muted diff backgrounds mark selected hunks; lighter tints mark refined text.
      (gruber-darker-red-bg     "#3b2022")
      (gruber-darker-green-bg   "#24351d")
      (gruber-darker-blue-bg    "#252b38")
      (gruber-darker-red-bg+1   "#633438")
      (gruber-darker-green-bg+1 "#405b36")
      (gruber-darker-blue-bg+1  "#3d4960"))
  (custom-theme-set-variables
   'my-gruber-darker
   '(frame-background-mode 'dark)
   `(ansi-color-names-vector
     [,gruber-darker-bg+3 ,gruber-darker-red ,gruber-darker-green
      ,gruber-darker-yellow ,gruber-darker-niagara ,gruber-darker-wisteria
      ,gruber-darker-quartz ,gruber-darker-fg]))

  (custom-theme-set-faces
   'my-gruber-darker

   ;; Agda2
   `(agda2-highlight-datatype-face ((t (:foreground ,gruber-darker-quartz))))
   `(agda2-highlight-primitive-type-face ((t (:foreground ,gruber-darker-quartz))))
   `(agda2-highlight-function-face ((t (:foreground ,gruber-darker-niagara))))
   `(agda2-highlight-keyword-face ((t ,(list :foreground gruber-darker-yellow
                                             :weight 'bold))))
   `(agda2-highlight-inductive-constructor-face ((t (:foreground ,gruber-darker-green))))
   `(agda2-highlight-number-face ((t (:foreground ,gruber-darker-wisteria))))

   ;; AUCTeX
   `(font-latex-bold-face ((t (:foreground ,gruber-darker-quartz :weight bold))))
   `(font-latex-italic-face ((t (:foreground ,gruber-darker-quartz :slant italic))))
   `(font-latex-math-face ((t (:foreground ,gruber-darker-green))))
   `(font-latex-script-char-face ((t (:foreground ,gruber-darker-brown))))
   `(font-latex-sectioning-0-face ((t (:foreground ,gruber-darker-yellow :weight bold :height 1.3))))
   `(font-latex-sectioning-1-face ((t (:foreground ,gruber-darker-niagara :weight bold :height 1.2))))
   `(font-latex-sectioning-2-face ((t (:foreground ,gruber-darker-wisteria :weight bold :height 1.1))))
   `(font-latex-sectioning-3-face ((t (:foreground ,gruber-darker-green :weight bold))))
   `(font-latex-sectioning-4-face ((t (:foreground ,gruber-darker-brown :weight bold))))
   `(font-latex-sectioning-5-face ((t (:foreground ,gruber-darker-quartz :weight bold))))
   `(font-latex-sedate-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-latex-slide-title-face ((t (:foreground ,gruber-darker-niagara :weight bold :height 1.3))))
   `(font-latex-string-face ((t (:foreground ,gruber-darker-green))))
   `(font-latex-subscript-face ((t (:height 0.9))))
   `(font-latex-superscript-face ((t (:height 0.9))))
   `(font-latex-verbatim-face ((t (:foreground ,gruber-darker-quartz :inherit fixed-pitch))))
   `(font-latex-warning-face ((t (:foreground ,gruber-darker-red :weight bold))))

   ;; Basic coloring and UI
   `(default ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg))))
   `(border ((t (:background ,gruber-darker-bg-1 :foreground ,gruber-darker-bg+2))))
   `(cursor ((t (:background ,gruber-darker-yellow))))
   `(fringe ((t (:background ,gruber-darker-bg :foreground ,gruber-darker-bg+4))))
   `(header-line ((t (:background ,gruber-darker-bg-1 :foreground ,gruber-darker-quartz))))
   `(highlight ((t (:background ,gruber-darker-bg+1 :extend t))))
   `(hl-line ((t (:background ,gruber-darker-bg+1 :extend t))))
   `(success ((t (:foreground ,gruber-darker-green :weight bold))))
   `(warning ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(error ((t (:foreground ,gruber-darker-red+1 :weight bold))))
   `(link ((t (:foreground ,gruber-darker-niagara :underline t))))
   `(link-visited ((t (:foreground ,gruber-darker-wisteria :underline t))))
   `(button ((t (:inherit link))))
   `(minibuffer-prompt ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(escape-glyph ((t (:foreground ,gruber-darker-yellow))))
   `(homoglyph ((t (:foreground ,gruber-darker-yellow))))
   `(menu ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg-1))))
   `(tooltip ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg+2))))
   `(shadow ((t (:foreground ,gruber-darker-bg+4))))
   `(region ((t (:background ,gruber-darker-bg+3 :extend t))))
   `(secondary-selection ((t (:background ,gruber-darker-bg+2 :extend t))))
   `(trailing-whitespace ((t (:foreground ,gruber-darker-black
                              :background ,gruber-darker-red))))
   `(vertical-border ((t (:foreground ,gruber-darker-bg+2))))
   `(window-divider ((t (:foreground ,gruber-darker-bg+2))))
   `(window-divider-first-pixel ((t (:foreground ,gruber-darker-bg+2))))
   `(window-divider-last-pixel ((t (:foreground ,gruber-darker-bg-1))))
   `(fill-column-indicator ((t (:foreground ,gruber-darker-bg+2))))
   `(separator-line ((t (:background ,gruber-darker-bg+2 :height 0.1))))
   `(nobreak-space ((t (:foreground ,gruber-darker-yellow :underline t))))
   `(nobreak-hyphen ((t (:foreground ,gruber-darker-yellow))))
   `(next-error ((t (:background ,gruber-darker-bg+1 :extend t))))
   `(next-error-message ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(pulse-highlight-start-face ((t (:background ,gruber-darker-bg+2 :extend t))))
   `(read-multiple-choice-face ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(key-binding ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(widget-field ((t (:background ,gruber-darker-bg+1 :extend t))))

   ;; Calendar
   `(calendar-month-header ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(calendar-weekday-header ((t (:foreground ,gruber-darker-green))))
   `(calendar-weekend-header ((t (:foreground ,gruber-darker-red+1))))
   `(calendar-today ((t (:foreground ,gruber-darker-yellow :weight bold :underline t))))
   `(holiday ((t (:foreground ,gruber-darker-red+1))))
   `(holiday-face ((t (:inherit holiday))))
   `(diary ((t (:foreground ,gruber-darker-wisteria))))

   ;; Compilation
   `(compilation-info ((t ,(list :foreground gruber-darker-green
                                 :inherit 'unspecified))))
   `(compilation-warning ((t ,(list :foreground gruber-darker-brown
                                    :weight 'bold
                                    :inherit 'unspecified))))
   `(compilation-error ((t (:foreground ,gruber-darker-red+1))))
   `(compilation-mode-line-fail ((t ,(list :foreground gruber-darker-red
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-exit ((t ,(list :foreground gruber-darker-green
                                           :weight 'bold
                                           :inherit 'unspecified))))
   `(compilation-mode-line-run ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(compilation-line-number ((t (:foreground ,gruber-darker-quartz))))
   `(compilation-column-number ((t (:foreground ,gruber-darker-quartz))))

   ;; Completion
   `(completions-annotations ((t (:foreground ,gruber-darker-quartz))))
   `(completions-common-part ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(completions-first-difference ((t (:foreground ,gruber-darker-brown))))
   `(completions-highlight ((t (:background ,gruber-darker-bg+2))))
   `(completions-group-title ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(completions-group-separator ((t (:foreground ,gruber-darker-bg+4 :strike-through t))))
   `(icomplete-first-match ((t (:foreground ,gruber-darker-yellow))))
   `(icomplete-selected-match ((t (:foreground ,gruber-darker-black
                                   :background ,gruber-darker-yellow))))
   `(completion-preview ((t (:foreground ,gruber-darker-bg+4))))
   `(completion-preview-common ((t (:foreground ,gruber-darker-quartz))))
   `(completion-preview-exact ((t (:foreground ,gruber-darker-niagara :underline t))))

   ;; Custom
   `(custom-variable-tag ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(custom-group-tag ((t (:foreground ,gruber-darker-niagara :weight bold :height 1.2))))
   `(custom-group-tag-1 ((t (:foreground ,gruber-darker-wisteria :weight bold :height 1.2))))
   `(custom-state ((t (:foreground ,gruber-darker-green))))
   `(custom-button ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg+1
                         :box (:line-width 1 :color ,gruber-darker-bg+4)))))
   `(custom-button-mouse ((t (:inherit custom-button :background ,gruber-darker-bg+2))))
   `(custom-button-pressed ((t (:inherit custom-button :background ,gruber-darker-bg-1))))

   ;; Diff
   ;; Keep line backgrounds neutral; reserve bold and lighter tints for refined text.
   `(diff-added ((t (:foreground ,gruber-darker-green :background unspecified :weight normal :extend t))))
   `(diff-removed ((t (:foreground ,gruber-darker-red+1 :background unspecified :weight normal :extend t))))
   `(diff-changed ((t (:foreground ,gruber-darker-niagara :background unspecified :weight normal :extend t))))
   `(diff-refine-added ((t (:foreground ,gruber-darker-fg+1 :background ,gruber-darker-green-bg+1
                            :weight bold :extend nil))))
   `(diff-refine-removed ((t (:foreground ,gruber-darker-fg+1 :background ,gruber-darker-red-bg+1
                              :weight bold :extend nil))))
   `(diff-refine-changed ((t (:foreground ,gruber-darker-fg+1 :background ,gruber-darker-blue-bg+1
                              :weight bold :extend nil))))
   `(diff-header ((t (:foreground ,gruber-darker-quartz :background ,gruber-darker-bg-1 :extend t))))
   `(diff-file-header ((t (:foreground ,gruber-darker-niagara :background ,gruber-darker-bg-1
                           :weight bold :extend t))))
   `(diff-hunk-header ((t (:foreground ,gruber-darker-wisteria :background ,gruber-darker-bg-1 :extend t))))
   `(diff-indicator-added ((t (:foreground ,gruber-darker-green))))
   `(diff-indicator-removed ((t (:foreground ,gruber-darker-red+1))))
   `(diff-indicator-changed ((t (:foreground ,gruber-darker-niagara))))
   `(diff-nonexistent ((t (:foreground ,gruber-darker-bg+4))))

   ;; Dired
   `(dired-directory ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(dired-flagged ((t (:foreground ,gruber-darker-red+1))))
   `(dired-header ((t (:foreground ,gruber-darker-wisteria :weight bold))))
   `(dired-ignored ((t (:foreground ,gruber-darker-quartz))))
   `(dired-mark ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(dired-marked ((t (:foreground ,gruber-darker-wisteria :weight bold))))
   `(dired-perm-write ((t (:foreground ,gruber-darker-quartz))))
   `(dired-symlink ((t (:foreground ,gruber-darker-yellow))))
   `(dired-warning ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(dired-broken-symlink ((t (:foreground ,gruber-darker-red+1 :weight bold))))

   ;; Ebrowse
   `(ebrowse-root-class ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(ebrowse-progress ((t (:background ,gruber-darker-niagara))))

   ;; Egg
   `(egg-branch ((t (:foreground ,gruber-darker-yellow))))
   `(egg-branch-mono ((t (:foreground ,gruber-darker-yellow))))
   `(egg-diff-add ((t (:foreground ,gruber-darker-green))))
   `(egg-diff-del ((t (:foreground ,gruber-darker-red))))
   `(egg-diff-file-header ((t (:foreground ,gruber-darker-wisteria))))
   `(egg-help-header-1 ((t (:foreground ,gruber-darker-yellow))))
   `(egg-help-header-2 ((t (:foreground ,gruber-darker-niagara))))
   `(egg-log-HEAD-name ((t (:box (:color ,gruber-darker-fg)))))
   `(egg-reflog-mono ((t (:foreground ,gruber-darker-niagara-1))))
   `(egg-section-title ((t (:foreground ,gruber-darker-yellow))))
   `(egg-text-base ((t (:foreground ,gruber-darker-fg))))
   `(egg-term ((t (:foreground ,gruber-darker-yellow))))

   ;; ERC
   `(erc-notice-face ((t (:foreground ,gruber-darker-wisteria))))
   `(erc-timestamp-face ((t (:foreground ,gruber-darker-green))))
   `(erc-input-face ((t (:foreground ,gruber-darker-red+1))))
   `(erc-my-nick-face ((t (:foreground ,gruber-darker-red+1))))

   ;; EShell
   `(eshell-ls-backup ((t (:foreground ,gruber-darker-quartz))))
   `(eshell-ls-directory ((t (:foreground ,gruber-darker-niagara))))
   `(eshell-ls-executable ((t (:foreground ,gruber-darker-green))))
   `(eshell-ls-symlink ((t (:foreground ,gruber-darker-yellow))))

   ;; Font Lock
   `(font-lock-builtin-face ((t (:foreground ,gruber-darker-yellow))))
   `(font-lock-comment-face ((t (:foreground ,gruber-darker-brown))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,gruber-darker-brown))))
   `(font-lock-constant-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-doc-face ((t (:foreground ,gruber-darker-green))))
   `(font-lock-doc-string-face ((t (:foreground ,gruber-darker-green))))
   `(font-lock-doc-markup-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-function-name-face ((t (:foreground ,gruber-darker-niagara))))
   `(font-lock-function-call-face ((t (:foreground ,gruber-darker-niagara))))
   `(font-lock-keyword-face ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,gruber-darker-yellow))))
   `(font-lock-number-face ((t (:foreground ,gruber-darker-wisteria))))
   `(font-lock-operator-face ((t (:foreground ,gruber-darker-fg))))
   `(font-lock-preprocessor-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-property-name-face ((t (:inherit font-lock-variable-name-face))))
   `(font-lock-property-use-face ((t (:inherit font-lock-property-name-face))))
   `(font-lock-reference-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,gruber-darker-wisteria :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,gruber-darker-wisteria :weight bold))))
   `(font-lock-string-face ((t (:foreground ,gruber-darker-green))))
   `(font-lock-type-face ((t (:foreground ,gruber-darker-quartz))))
   `(font-lock-variable-name-face ((t (:foreground ,gruber-darker-fg+1))))
   `(font-lock-variable-use-face ((t (:foreground ,gruber-darker-fg+1))))
   `(font-lock-punctuation-face ((t (:foreground ,gruber-darker-fg))))
   `(font-lock-bracket-face ((t (:inherit font-lock-punctuation-face))))
   `(font-lock-delimiter-face ((t (:inherit font-lock-punctuation-face))))
   `(font-lock-escape-face ((t (:foreground ,gruber-darker-yellow))))
   `(font-lock-misc-punctuation-face ((t (:inherit font-lock-punctuation-face))))
   `(font-lock-warning-face ((t (:foreground ,gruber-darker-red+1 :weight bold))))

   ;; Flymake
   `(flymake-error ((t (:underline (:style wave :color ,gruber-darker-red)))))
   `(flymake-warning ((t (:underline (:style wave :color ,gruber-darker-yellow)))))
   `(flymake-note ((t (:underline (:style wave :color ,gruber-darker-green)))))

   ;; Flyspell
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darker-red) :inherit unspecified))
      (t (:foreground ,gruber-darker-red :weight bold :underline t))))
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,gruber-darker-yellow) :inherit unspecified))
      (t (:foreground ,gruber-darker-yellow :weight bold :underline t))))

   ;; Helm
   `(helm-candidate-number ((t ,(list :background gruber-darker-bg+2
                                      :foreground gruber-darker-yellow
                                      :weight 'bold))))
   `(helm-ff-directory ((t ,(list :foreground gruber-darker-niagara
                                  :background gruber-darker-bg
                                  :weight 'bold))))
   `(helm-ff-executable ((t (:foreground ,gruber-darker-green))))
   `(helm-ff-file ((t (:foreground ,gruber-darker-fg :inherit unspecified))))
   `(helm-ff-invalid-symlink ((t ,(list :foreground gruber-darker-bg
                                        :background gruber-darker-red))))
   `(helm-ff-symlink ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(helm-selection-line ((t (:background ,gruber-darker-bg+1))))
   `(helm-selection ((t (:background ,gruber-darker-bg+1 :underline nil))))
   `(helm-source-header ((t ,(list :foreground gruber-darker-yellow
                                   :background gruber-darker-bg
                                   :box (list :line-width -1
                                              :style 'released-button)))))

   ;; Ido
   `(ido-first-match ((t (:foreground ,gruber-darker-yellow :weight normal))))
   `(ido-only-match ((t (:foreground ,gruber-darker-brown :weight bold))))
   `(ido-subdir ((t (:foreground ,gruber-darker-niagara :weight bold))))

   ;; Info
   `(Info-quoted ((t (:foreground ,gruber-darker-brown :inherit fixed-pitch-serif))))
   `(info-header-node ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(info-header-xref ((t (:inherit info-xref))))
   `(info-menu-header ((t (:foreground ,gruber-darker-fg :weight bold))))
   `(info-menu-star ((t (:foreground ,gruber-darker-red+1))))
   `(info-node ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(info-title-1 ((t (:foreground ,gruber-darker-yellow :weight bold :height 1.3))))
   `(info-title-2 ((t (:foreground ,gruber-darker-niagara :weight bold :height 1.2))))
   `(info-title-3 ((t (:foreground ,gruber-darker-wisteria :weight bold :height 1.1))))
   `(info-title-4 ((t (:foreground ,gruber-darker-quartz :weight bold))))
   `(info-xref ((t (:foreground ,gruber-darker-niagara :underline t))))
   `(info-xref-visited ((t (:foreground ,gruber-darker-wisteria :underline t))))
   `(info-visited ((t (:inherit info-xref-visited))))

   ;; Help
   `(help-argument-name ((t (:foreground ,gruber-darker-quartz :slant italic))))
   `(help-for-help-header ((t (:foreground ,gruber-darker-yellow :weight bold :height 1.2))))
   `(help-key-binding ((t (:foreground ,gruber-darker-black :background ,gruber-darker-niagara))))
   `(help-xref ((t (:foreground ,gruber-darker-niagara :underline t))))
   `(help-xref-visited ((t (:foreground ,gruber-darker-wisteria :underline t))))

   ;; Jabber
   `(jabber-chat-prompt-foreign ((t ,(list :foreground gruber-darker-quartz
                                           :weight 'normal))))
   `(jabber-chat-prompt-local ((t (:foreground ,gruber-darker-yellow))))
   `(jabber-chat-prompt-system ((t (:foreground ,gruber-darker-green))))
   `(jabber-rare-time-face ((t (:foreground ,gruber-darker-green))))
   `(jabber-roster-user-online ((t (:foreground ,gruber-darker-green))))
   `(jabber-activity-face ((t (:foreground ,gruber-darker-red))))
   `(jabber-activity-personal-face ((t (:foreground ,gruber-darker-yellow :weight bold))))

   ;; Line highlighting and numbers
   `(highlight-current-line-face ((t (:background ,gruber-darker-bg+1 :extend t))))
   `(line-number ((t (:inherit default :foreground ,gruber-darker-bg+4))))
   `(line-number-current-line ((t (:inherit line-number :foreground ,gruber-darker-yellow
                                 :weight bold))))
   `(line-number-major-tick ((t (:foreground ,gruber-darker-quartz))))
   `(line-number-minor-tick ((t (:foreground ,gruber-darker-bg+3))))
   `(linum ((t (:foreground ,gruber-darker-bg+4 :background ,gruber-darker-bg))))

   ;; Magit
   `(magit-section-heading ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(magit-section-heading-selection ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(magit-section-secondary-heading ((t (:foreground ,gruber-darker-wisteria :weight bold))))
   `(magit-section-highlight ((t (:background ,gruber-darker-bg+1 :extend t))))
   `(magit-section-child-count ((t (:foreground ,gruber-darker-quartz))))
   `(magit-header-line ((t (:foreground ,gruber-darker-niagara :background ,gruber-darker-bg-1
                            :weight bold))))
   `(magit-header-line-key ((t (:foreground ,gruber-darker-yellow))))
   `(magit-dimmed ((t (:foreground ,gruber-darker-bg+4))))
   `(magit-hash ((t (:foreground ,gruber-darker-quartz))))
   `(magit-tag ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(magit-keyword ((t (:foreground ,gruber-darker-wisteria))))
   `(magit-keyword-squash ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(magit-filename ((t (:foreground ,gruber-darker-fg))))
   `(magit-head ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(magit-branch-local ((t (:foreground ,gruber-darker-niagara))))
   `(magit-branch-current ((t (:foreground ,gruber-darker-niagara :weight bold
                               :box (:line-width -1 :color ,gruber-darker-niagara-1)))))
   `(magit-branch-remote ((t (:foreground ,gruber-darker-green))))
   `(magit-branch-remote-head ((t (:foreground ,gruber-darker-green :weight bold))))
   `(magit-branch-upstream ((t (:slant italic))))
   `(magit-branch-warning ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(magit-refname ((t (:foreground ,gruber-darker-quartz))))
   `(magit-refname-stash ((t (:foreground ,gruber-darker-wisteria))))
   `(magit-refname-wip ((t (:foreground ,gruber-darker-quartz :slant italic))))
   `(magit-refname-pullreq ((t (:foreground ,gruber-darker-green))))
   `(magit-signature-good ((t (:foreground ,gruber-darker-green))))
   `(magit-signature-bad ((t (:foreground ,gruber-darker-red+1 :weight bold))))
   `(magit-signature-untrusted ((t (:foreground ,gruber-darker-yellow))))
   `(magit-signature-expired ((t (:foreground ,gruber-darker-brown))))
   `(magit-signature-expired-key ((t (:foreground ,gruber-darker-brown))))
   `(magit-signature-revoked ((t (:foreground ,gruber-darker-wisteria))))
   `(magit-signature-error ((t (:foreground ,gruber-darker-red))))
   `(magit-cherry-unmatched ((t (:foreground ,gruber-darker-niagara))))
   `(magit-cherry-equivalent ((t (:foreground ,gruber-darker-wisteria))))
   `(magit-diff-file-heading ((t (:foreground ,gruber-darker-fg :weight bold :extend t))))
   `(magit-diff-file-heading-highlight ((t (:foreground ,gruber-darker-fg
                                             :background ,gruber-darker-bg+1 :weight bold :extend t))))
   `(magit-diff-file-heading-selection ((t (:foreground ,gruber-darker-yellow
                                             :background ,gruber-darker-bg+1 :weight bold :extend t))))
   `(magit-diff-hunk-heading ((t (:foreground ,gruber-darker-quartz
                                  :background ,gruber-darker-bg-1 :extend t))))
   `(magit-diff-hunk-heading-highlight ((t (:foreground ,gruber-darker-fg
                                            :background ,gruber-darker-bg+2 :extend t))))
   `(magit-diff-hunk-heading-selection ((t (:foreground ,gruber-darker-yellow
                                            :background ,gruber-darker-bg+2 :extend t))))
   `(magit-diff-conflict-heading ((t (:foreground ,gruber-darker-yellow
                                      :background ,gruber-darker-bg-1 :extend t))))
   `(magit-diff-conflict-heading-highlight ((t (:foreground ,gruber-darker-yellow
                                                :background ,gruber-darker-bg+2 :extend t))))
   `(magit-diff-revision-summary ((t (:foreground ,gruber-darker-fg :weight bold))))
   `(magit-diff-revision-summary-highlight ((t (:foreground ,gruber-darker-fg
                                                :background ,gruber-darker-bg+1 :weight bold))))
   `(magit-diff-lines-heading ((t (:foreground ,gruber-darker-black
                                   :background ,gruber-darker-niagara :extend t))))
   `(magit-diff-context ((t (:foreground ,gruber-darker-quartz :extend t))))
   `(magit-diff-context-highlight ((t (:foreground ,gruber-darker-fg
                                       :background ,gruber-darker-bg+1 :extend t))))
   `(magit-diff-added ((t (:inherit diff-added))))
   `(magit-diff-added-highlight ((t (:inherit magit-diff-added :background ,gruber-darker-green-bg))))
   `(magit-diff-removed ((t (:inherit diff-removed))))
   `(magit-diff-removed-highlight ((t (:inherit magit-diff-removed :background ,gruber-darker-red-bg))))
   `(magit-diff-base ((t (:inherit diff-changed))))
   `(magit-diff-base-highlight ((t (:inherit magit-diff-base :background ,gruber-darker-blue-bg))))
   `(magit-diff-our ((t (:inherit magit-diff-removed))))
   `(magit-diff-our-highlight ((t (:inherit magit-diff-removed-highlight))))
   `(magit-diff-their ((t (:inherit magit-diff-added))))
   `(magit-diff-their-highlight ((t (:inherit magit-diff-added-highlight))))
   `(magit-diff-removed-indicator ((t (:foreground ,gruber-darker-red+1))))
   `(magit-diff-added-indicator ((t (:foreground ,gruber-darker-green))))
   `(magit-diff-base-indicator ((t (:foreground ,gruber-darker-niagara))))
   `(magit-diffstat-added ((t (:foreground ,gruber-darker-green))))
   `(magit-diffstat-removed ((t (:foreground ,gruber-darker-red+1))))
   `(magit-diff-whitespace-warning ((t (:background ,gruber-darker-red))))
   `(magit-log-graph ((t (:foreground ,gruber-darker-quartz))))
   `(magit-log-author ((t (:foreground ,gruber-darker-brown))))
   `(magit-log-date ((t (:foreground ,gruber-darker-green))))
   `(magit-header-line-log-select ((t (:foreground ,gruber-darker-fg :weight bold))))
   `(magit-process-ok ((t (:foreground ,gruber-darker-green :weight bold))))
   `(magit-process-ng ((t (:foreground ,gruber-darker-red+1 :weight bold))))
   `(magit-mode-line-process ((t (:foreground ,gruber-darker-niagara))))
   `(magit-mode-line-process-error ((t (:foreground ,gruber-darker-red+1))))
   `(magit-blame-highlight ((t (:background ,gruber-darker-bg+1 :extend t))))
   `(magit-blame-margin ((t (:foreground ,gruber-darker-quartz
                             :background ,gruber-darker-bg-1 :extend t))))
   `(magit-blame-dimmed ((t (:foreground ,gruber-darker-bg+4))))
   `(magit-blame-heading ((t (:foreground ,gruber-darker-fg
                              :background ,gruber-darker-bg-1 :extend t))))
   `(magit-blame-summary ((t (:foreground ,gruber-darker-fg))))
   `(magit-blame-hash ((t (:foreground ,gruber-darker-quartz))))
   `(magit-blame-name ((t (:foreground ,gruber-darker-brown))))
   `(magit-blame-date ((t (:foreground ,gruber-darker-green))))
   `(magit-left-margin ((t (:foreground ,gruber-darker-quartz :background ,gruber-darker-bg-1))))
   `(magit-bisect-good ((t (:foreground ,gruber-darker-green))))
   `(magit-bisect-skip ((t (:foreground ,gruber-darker-yellow))))
   `(magit-bisect-bad ((t (:foreground ,gruber-darker-red+1))))
   `(magit-sequence-pick ((t (:foreground ,gruber-darker-niagara))))
   `(magit-sequence-stop ((t (:foreground ,gruber-darker-green))))
   `(magit-sequence-part ((t (:foreground ,gruber-darker-yellow))))
   `(magit-sequence-head ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(magit-sequence-drop ((t (:foreground ,gruber-darker-red+1))))
   `(magit-sequence-done ((t (:foreground ,gruber-darker-bg+4))))
   `(magit-sequence-onto ((t (:foreground ,gruber-darker-quartz))))
   `(magit-sequence-exec ((t (:foreground ,gruber-darker-wisteria))))
   `(magit-reflog-commit ((t (:foreground ,gruber-darker-green))))
   `(magit-reflog-amend ((t (:foreground ,gruber-darker-wisteria))))
   `(magit-reflog-merge ((t (:foreground ,gruber-darker-green))))
   `(magit-reflog-checkout ((t (:foreground ,gruber-darker-niagara))))
   `(magit-reflog-reset ((t (:foreground ,gruber-darker-red+1))))
   `(magit-reflog-rebase ((t (:foreground ,gruber-darker-wisteria))))
   `(magit-reflog-cherry-pick ((t (:foreground ,gruber-darker-green))))
   `(magit-reflog-remote ((t (:foreground ,gruber-darker-niagara))))
   `(magit-reflog-other ((t (:foreground ,gruber-darker-quartz))))
   `(magit-diff-lines-boundary ((t (:foreground ,gruber-darker-niagara :extend t))))
   `(magit-diff-hunk-region ((t (:background ,gruber-darker-bg+2 :extend t))))
   `(magit-diff-base-heading ((t (:inherit magit-diff-base :weight bold))))
   `(magit-diff-our-heading ((t (:inherit magit-diff-our :weight bold))))
   `(magit-diff-their-heading ((t (:inherit magit-diff-their :weight bold))))
   `(magit-diff-our-indicator ((t (:foreground ,gruber-darker-red+1))))
   `(magit-diff-their-indicator ((t (:foreground ,gruber-darker-green))))

   ;; Legacy Magit faces
   `(magit-branch ((t (:inherit magit-branch-local))))
   `(magit-diff-hunk-header ((t (:inherit magit-diff-hunk-heading))))
   `(magit-diff-file-header ((t (:inherit magit-diff-file-heading))))
   `(magit-log-sha1 ((t (:inherit magit-hash))))
   `(magit-item-highlight ((t (:inherit magit-section-highlight))))

   ;; Message
   `(message-cited-text-1 ((t (:foreground ,gruber-darker-green))))
   `(message-cited-text-2 ((t (:foreground ,gruber-darker-niagara))))
   `(message-cited-text-3 ((t (:foreground ,gruber-darker-quartz))))
   `(message-cited-text-4 ((t (:foreground ,gruber-darker-quartz))))
   `(message-header-cc ((t (:foreground ,gruber-darker-niagara))))
   `(message-header-name ((t (:foreground ,gruber-darker-green))))
   `(message-header-newsgroups ((t (:foreground ,gruber-darker-green :weight bold))))
   `(message-header-other ((t (:foreground ,gruber-darker-quartz))))
   `(message-header-subject ((t (:foreground ,gruber-darker-fg :weight bold))))
   `(message-header-to ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(message-header-xheader ((t (:foreground ,gruber-darker-quartz))))
   `(message-mml ((t (:foreground ,gruber-darker-yellow))))
   `(message-separator ((t (:foreground ,gruber-darker-bg+4))))

   ;; Mode line
   `(mode-line ((t (:background ,gruber-darker-bg+1 :foreground ,gruber-darker-fg
                     :box (:line-width -1 :color ,gruber-darker-bg+3)))))
   `(mode-line-buffer-id ((t (:foreground ,gruber-darker-white :weight bold))))
   `(mode-line-emphasis ((t (:foreground ,gruber-darker-fg :weight bold))))
   `(mode-line-highlight ((t (:foreground ,gruber-darker-niagara))))
   `(mode-line-inactive ((t (:background ,gruber-darker-bg-1 :foreground ,gruber-darker-quartz
                              :box (:line-width -1 :color ,gruber-darker-bg+1)))))

   ;; Neo Dir
   `(neo-dir-link-face ((t (:foreground ,gruber-darker-niagara))))

   ;; Org mode and outline
   `(org-archived ((t (:foreground ,gruber-darker-bg+4))))
   `(org-block ((t (:background ,gruber-darker-bg-1 :extend t))))
   `(org-block-begin-line ((t (:foreground ,gruber-darker-quartz
                               :background ,gruber-darker-bg-1 :extend t))))
   `(org-block-end-line ((t (:inherit org-block-begin-line))))
   `(org-checkbox ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(org-checkbox-statistics-done ((t (:foreground ,gruber-darker-green))))
   `(org-checkbox-statistics-todo ((t (:foreground ,gruber-darker-brown))))
   `(org-code ((t (:foreground ,gruber-darker-quartz))))
   `(org-date ((t (:foreground ,gruber-darker-green :underline t))))
   `(org-document-info ((t (:foreground ,gruber-darker-quartz))))
   `(org-document-info-keyword ((t (:foreground ,gruber-darker-bg+4))))
   `(org-document-title ((t (:foreground ,gruber-darker-yellow :weight bold :height 1.3))))
   `(org-done ((t (:foreground ,gruber-darker-green :weight bold))))
   `(org-drawer ((t (:foreground ,gruber-darker-quartz))))
   `(org-ellipsis ((t (:foreground ,gruber-darker-yellow :underline nil))))
   `(org-footnote ((t (:foreground ,gruber-darker-niagara))))
   `(org-formula ((t (:foreground ,gruber-darker-brown))))
   `(org-headline-done ((t (:foreground ,gruber-darker-quartz))))
   `(org-hide ((t (:foreground ,gruber-darker-bg))))
   `(outline-1 ((t (:foreground ,gruber-darker-yellow :weight bold :height 1.3))))
   `(outline-2 ((t (:foreground ,gruber-darker-niagara :weight bold :height 1.2))))
   `(outline-3 ((t (:foreground ,gruber-darker-wisteria :weight bold :height 1.1))))
   `(outline-4 ((t (:foreground ,gruber-darker-green :weight bold))))
   `(outline-5 ((t (:foreground ,gruber-darker-brown :weight bold))))
   `(outline-6 ((t (:foreground ,gruber-darker-quartz :weight bold))))
   `(outline-7 ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(outline-8 ((t (:foreground ,gruber-darker-quartz :weight bold))))
   `(org-level-1 ((t (:inherit outline-1))))
   `(org-level-2 ((t (:inherit outline-2))))
   `(org-level-3 ((t (:inherit outline-3))))
   `(org-level-4 ((t (:inherit outline-4))))
   `(org-level-5 ((t (:inherit outline-5))))
   `(org-level-6 ((t (:inherit outline-6))))
   `(org-level-7 ((t (:inherit outline-7))))
   `(org-level-8 ((t (:inherit outline-8))))
   `(org-link ((t (:foreground ,gruber-darker-niagara :underline t))))
   `(org-meta-line ((t (:foreground ,gruber-darker-quartz))))
   `(org-priority ((t (:foreground ,gruber-darker-brown))))
   `(org-property-value ((t (:foreground ,gruber-darker-fg))))
   `(org-quote ((t (:foreground ,gruber-darker-quartz :slant italic :extend t))))
   `(org-scheduled ((t (:foreground ,gruber-darker-green))))
   `(org-scheduled-previously ((t (:foreground ,gruber-darker-brown))))
   `(org-scheduled-today ((t (:foreground ,gruber-darker-green :weight bold))))
   `(org-special-keyword ((t (:foreground ,gruber-darker-quartz))))
   `(org-table ((t (:foreground ,gruber-darker-niagara))))
   `(org-tag ((t (:foreground ,gruber-darker-quartz :weight normal))))
   `(org-target ((t (:underline t))))
   `(org-time-grid ((t (:foreground ,gruber-darker-bg+4))))
   `(org-todo ((t (:foreground ,gruber-darker-red-1 :weight bold))))
   `(org-upcoming-deadline ((t (:foreground ,gruber-darker-yellow))))
   `(org-verbatim ((t (:foreground ,gruber-darker-green))))
   `(org-verse ((t (:inherit org-quote))))
   `(org-warning ((t (:inherit font-lock-warning-face))))
   `(org-column ((t (:background ,gruber-darker-bg-1))))
   `(org-column-title ((t (:background ,gruber-darker-bg-1 :underline t :weight bold))))
   `(org-agenda-date ((t (:foreground ,gruber-darker-niagara))))
   `(org-agenda-date-today ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(org-agenda-date-weekend ((t (:foreground ,gruber-darker-quartz))))
   `(org-agenda-date-weekend-today ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(org-agenda-done ((t (:foreground ,gruber-darker-green))))
   `(org-agenda-structure ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(org-agenda-current-time ((t (:foreground ,gruber-darker-green))))

   ;; Package menu
   `(package-description ((t (:foreground ,gruber-darker-fg))))
   `(package-help-section-name ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(package-name ((t (:foreground ,gruber-darker-niagara :underline t))))
   `(package-status-available ((t (:foreground ,gruber-darker-fg))))
   `(package-status-avail-obso ((t (:foreground ,gruber-darker-brown))))
   `(package-status-built-in ((t (:foreground ,gruber-darker-wisteria))))
   `(package-status-dependency ((t (:foreground ,gruber-darker-quartz))))
   `(package-status-disabled ((t (:foreground ,gruber-darker-bg+4))))
   `(package-status-external ((t (:foreground ,gruber-darker-quartz))))
   `(package-status-held ((t (:foreground ,gruber-darker-yellow))))
   `(package-status-incompat ((t (:foreground ,gruber-darker-red+1))))
   `(package-status-installed ((t (:foreground ,gruber-darker-green))))
   `(package-status-new ((t (:foreground ,gruber-darker-green :weight bold))))
   `(package-status-unsigned ((t (:foreground ,gruber-darker-yellow))))

   ;; Search
   `(isearch ((t (:foreground ,gruber-darker-black :background ,gruber-darker-fg+2))))
   `(isearch-fail ((t (:foreground ,gruber-darker-black :background ,gruber-darker-red))))
   `(isearch-group-1 ((t (:foreground ,gruber-darker-black :background ,gruber-darker-niagara))))
   `(isearch-group-2 ((t (:foreground ,gruber-darker-black :background ,gruber-darker-green))))
   `(lazy-highlight ((t (:foreground ,gruber-darker-fg+1 :background ,gruber-darker-niagara-1))))
   `(isearch-lazy-highlight-face ((t (:inherit lazy-highlight))))
   `(match ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg+4))))
   `(query-replace ((t (:foreground ,gruber-darker-black :background ,gruber-darker-brown
                         :weight bold))))

   ;; Grep and xref
   `(grep-context-face ((t (:foreground ,gruber-darker-quartz))))
   `(grep-error-face ((t (:foreground ,gruber-darker-red+1 :weight bold :underline t))))
   `(grep-hit-face ((t (:foreground ,gruber-darker-niagara))))
   `(grep-match-face ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(xref-file-header ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(xref-line-number ((t (:foreground ,gruber-darker-quartz))))
   `(xref-match ((t (:foreground ,gruber-darker-yellow :weight bold))))

   ;; Ediff and merge conflicts
   `(ediff-current-diff-A ((t (:background ,gruber-darker-red-bg :extend t))))
   `(ediff-current-diff-B ((t (:background ,gruber-darker-green-bg :extend t))))
   `(ediff-current-diff-C ((t (:background ,gruber-darker-blue-bg :extend t))))
   `(ediff-fine-diff-A ((t (:foreground ,gruber-darker-fg+1 :background ,gruber-darker-red-bg+1
                            :weight bold :extend nil))))
   `(ediff-fine-diff-B ((t (:foreground ,gruber-darker-fg+1 :background ,gruber-darker-green-bg+1
                            :weight bold :extend nil))))
   `(ediff-fine-diff-C ((t (:foreground ,gruber-darker-fg+1 :background ,gruber-darker-blue-bg+1
                            :weight bold :extend nil))))
   `(ediff-even-diff-A ((t (:background ,gruber-darker-bg+1 :extend t))))
   `(ediff-even-diff-B ((t (:background ,gruber-darker-bg+1 :extend t))))
   `(ediff-even-diff-C ((t (:background ,gruber-darker-bg+1 :extend t))))
   `(ediff-odd-diff-A ((t (:background ,gruber-darker-bg-1 :extend t))))
   `(ediff-odd-diff-B ((t (:background ,gruber-darker-bg-1 :extend t))))
   `(ediff-odd-diff-C ((t (:background ,gruber-darker-bg-1 :extend t))))
   `(smerge-base ((t (:background ,gruber-darker-blue-bg :extend t))))
   `(smerge-markers ((t (:foreground ,gruber-darker-quartz :background ,gruber-darker-bg-1 :extend t))))
   `(smerge-upper ((t (:background ,gruber-darker-red-bg :extend t))))
   `(smerge-lower ((t (:background ,gruber-darker-green-bg :extend t))))
   `(smerge-refined-added ((t (:inherit diff-refine-added))))
   `(smerge-refined-removed ((t (:inherit diff-refine-removed))))
   `(smerge-refined-changed ((t (:inherit diff-refine-changed))))

   ;; Sh
   `(sh-heredoc ((t (:foreground ,gruber-darker-green :slant italic))))
   `(sh-quoted-exec ((t (:foreground ,gruber-darker-red+1))))

   ;; Show paren
   `(show-paren-match ((t (:background ,gruber-darker-bg+4))))
   `(show-paren-match-expression ((t (:background ,gruber-darker-bg+1))))
   `(show-paren-mismatch ((t (:foreground ,gruber-darker-black :background ,gruber-darker-red
                               :weight bold :underline t))))
   `(show-paren-match-face ((t (:inherit show-paren-match))))
   `(show-paren-mismatch-face ((t (:inherit show-paren-mismatch))))

   ;; Slime
   `(slime-repl-inputed-output-face ((t (:foreground ,gruber-darker-red))))

   ;; Tuareg
   `(tuareg-font-lock-governing-face ((t (:foreground ,gruber-darker-yellow))))

   ;; Speedbar
   `(speedbar-directory-face ((t ,(list :foreground gruber-darker-niagara
                                        :weight 'bold))))
   `(speedbar-file-face ((t (:foreground ,gruber-darker-fg))))
   `(speedbar-highlight-face ((t (:background ,gruber-darker-bg+1))))
   `(speedbar-selected-face ((t (:foreground ,gruber-darker-red))))
   `(speedbar-tag-face ((t (:foreground ,gruber-darker-yellow))))

   ;; Which Function
   `(which-func ((t (:foreground ,gruber-darker-wisteria))))

   ;; Whitespace
   `(whitespace-space ((t (:foreground ,gruber-darker-bg+1))))
   `(whitespace-tab ((t (:foreground ,gruber-darker-bg+2))))
   `(whitespace-hspace ((t (:foreground ,gruber-darker-bg+2))))
   `(whitespace-line ((t (:foreground ,gruber-darker-red+1 :background ,gruber-darker-bg+1))))
   `(whitespace-newline ((t (:foreground ,gruber-darker-bg+2))))
   `(whitespace-trailing ((t (:foreground ,gruber-darker-red+1 :background ,gruber-darker-red-bg))))
   `(whitespace-empty ((t (:foreground ,gruber-darker-red+1 :background ,gruber-darker-red-bg))))
   `(whitespace-indentation ((t (:foreground ,gruber-darker-bg+2))))
   `(whitespace-space-after-tab ((t (:foreground ,gruber-darker-brown))))
   `(whitespace-space-before-tab ((t (:foreground ,gruber-darker-brown))))
   `(whitespace-big-indent ((t (:foreground ,gruber-darker-brown :background ,gruber-darker-bg+1))))

   ;; Tab bar and tab line
   `(tab-bar ((t (:background ,gruber-darker-bg-1 :foreground ,gruber-darker-quartz))))
   `(tab-bar-tab ((t (:background ,gruber-darker-bg :foreground ,gruber-darker-yellow :weight bold))))
   `(tab-bar-tab-inactive ((t (:background ,gruber-darker-bg-1 :foreground ,gruber-darker-quartz))))
   `(tab-bar-tab-ungrouped ((t (:background ,gruber-darker-bg-1 :foreground ,gruber-darker-bg+4))))
   `(tab-bar-tab-group-current ((t (:background ,gruber-darker-bg :foreground ,gruber-darker-niagara
                                      :weight bold))))
   `(tab-bar-tab-group-inactive ((t (:background ,gruber-darker-bg-1 :foreground ,gruber-darker-quartz))))
   `(tab-line ((t (:background ,gruber-darker-bg-1 :foreground ,gruber-darker-quartz))))
   `(tab-line-tab ((t (:background ,gruber-darker-bg :foreground ,gruber-darker-fg))))
   `(tab-line-tab-current ((t (:background ,gruber-darker-bg :foreground ,gruber-darker-yellow
                                :weight bold))))
   `(tab-line-tab-inactive ((t (:background ,gruber-darker-bg-1 :foreground ,gruber-darker-quartz))))
   `(tab-line-highlight ((t (:background ,gruber-darker-bg+1))))

   ;; Terminal and ANSI colors
   `(term ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg))))
   `(term-color-black ((t (:foreground ,gruber-darker-bg+3 :background ,gruber-darker-bg+3))))
   `(term-color-red ((t (:foreground ,gruber-darker-red :background ,gruber-darker-red))))
   `(term-color-green ((t (:foreground ,gruber-darker-green :background ,gruber-darker-green))))
   `(term-color-blue ((t (:foreground ,gruber-darker-niagara :background ,gruber-darker-niagara))))
   `(term-color-yellow ((t (:foreground ,gruber-darker-yellow :background ,gruber-darker-yellow))))
   `(term-color-magenta ((t (:foreground ,gruber-darker-wisteria :background ,gruber-darker-wisteria))))
   `(term-color-cyan ((t (:foreground ,gruber-darker-quartz :background ,gruber-darker-quartz))))
   `(term-color-white ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-fg))))
   `(ansi-color-black ((t (:foreground ,gruber-darker-bg+3 :background ,gruber-darker-bg+3))))
   `(ansi-color-red ((t (:foreground ,gruber-darker-red :background ,gruber-darker-red))))
   `(ansi-color-green ((t (:foreground ,gruber-darker-green :background ,gruber-darker-green))))
   `(ansi-color-yellow ((t (:foreground ,gruber-darker-yellow :background ,gruber-darker-yellow))))
   `(ansi-color-blue ((t (:foreground ,gruber-darker-niagara :background ,gruber-darker-niagara))))
   `(ansi-color-magenta ((t (:foreground ,gruber-darker-wisteria :background ,gruber-darker-wisteria))))
   `(ansi-color-cyan ((t (:foreground ,gruber-darker-quartz :background ,gruber-darker-quartz))))
   `(ansi-color-white ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-fg))))
   `(ansi-color-bright-black ((t (:foreground ,gruber-darker-bg+4 :background ,gruber-darker-bg+4))))
   `(ansi-color-bright-red ((t (:foreground ,gruber-darker-red+1 :background ,gruber-darker-red+1))))
   `(ansi-color-bright-green ((t (:foreground ,gruber-darker-green :background ,gruber-darker-green))))
   `(ansi-color-bright-yellow ((t (:foreground ,gruber-darker-yellow :background ,gruber-darker-yellow))))
   `(ansi-color-bright-blue ((t (:foreground ,gruber-darker-niagara :background ,gruber-darker-niagara))))
   `(ansi-color-bright-magenta ((t (:foreground ,gruber-darker-wisteria :background ,gruber-darker-wisteria))))
   `(ansi-color-bright-cyan ((t (:foreground ,gruber-darker-quartz :background ,gruber-darker-quartz))))
   `(ansi-color-bright-white ((t (:foreground ,gruber-darker-white :background ,gruber-darker-white))))

   ;; Company
   `(company-tooltip ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg-1))))
   `(company-tooltip-selection ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg+1))))
   `(company-tooltip-deprecated ((t (:foreground unspecified :inherit unspecified :strike-through t))))
   `(company-tooltip-search ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(company-tooltip-search-selection ((t (:foreground ,gruber-darker-yellow :weight bold))))
   `(company-tooltip-mouse ((t (:background ,gruber-darker-bg+1))))
   `(company-tooltip-common ((t (:foreground ,gruber-darker-green :weight bold))))
   `(company-tooltip-common-selection ((t (:foreground ,gruber-darker-green :weight bold))))
   `(company-tooltip-annotation ((t (:foreground ,gruber-darker-brown))))
   `(company-tooltip-annotation-selection ((t (:foreground ,gruber-darker-brown))))
   `(company-tooltip-quick-access ((t (:foreground ,gruber-darker-quartz))))
   `(company-tooltip-quick-access-selection ((t (:foreground ,gruber-darker-fg))))
   `(company-tooltip-scrollbar-thumb ((t (:background ,gruber-darker-bg+3))))
   `(company-tooltip-scrollbar-track ((t (:background ,gruber-darker-bg+1))))
   `(company-scrollbar-fg ((t (:inherit company-tooltip-scrollbar-thumb))))
   `(company-scrollbar-bg ((t (:inherit company-tooltip-scrollbar-track))))
   `(company-preview ((t (:foreground ,gruber-darker-quartz))))
   `(company-preview-common ((t (:foreground ,gruber-darker-green))))
   `(company-preview-search ((t (:foreground ,gruber-darker-yellow))))
   `(company-echo ((t (:foreground ,gruber-darker-fg))))
   `(company-echo-common ((t (:foreground ,gruber-darker-green :weight bold))))

   ;; Eglot and Eldoc
   `(eglot-highlight-symbol-face ((t (:background ,gruber-darker-bg+1 :weight bold))))
   `(eglot-diagnostic-tag-unnecessary-face ((t (:foreground ,gruber-darker-quartz
                                                 :underline (:style wave :color ,gruber-darker-quartz)))))
   `(eglot-diagnostic-tag-deprecated-face ((t (:foreground unspecified :inherit unspecified :strike-through t))))
   `(eglot-inlay-hint-face ((t (:foreground ,gruber-darker-quartz :height 0.9))))
   `(eldoc-highlight-function-argument ((t (:foreground ,gruber-darker-yellow :weight bold))))

   ;; Version control
   `(vc-state-base ((t (:foreground ,gruber-darker-green))))
   `(vc-conflict-state ((t (:foreground ,gruber-darker-red+1 :weight bold))))
   `(vc-edited-state ((t (:foreground ,gruber-darker-yellow))))
   `(vc-locally-added-state ((t (:foreground ,gruber-darker-green))))
   `(vc-locked-state ((t (:foreground ,gruber-darker-brown :weight bold))))
   `(vc-missing-state ((t (:foreground ,gruber-darker-red))))
   `(vc-needs-update-state ((t (:foreground ,gruber-darker-brown))))
   `(vc-removed-state ((t (:foreground ,gruber-darker-red+1))))
   `(vc-up-to-date-state ((t (:foreground ,gruber-darker-green))))
   `(diff-hl-change ((t (:foreground ,gruber-darker-niagara))))
   `(diff-hl-delete ((t (:foreground ,gruber-darker-red+1))))
   `(diff-hl-insert ((t (:foreground ,gruber-darker-green))))

   ;; Git commit and rebase
   `(git-commit-summary ((t (:foreground ,gruber-darker-fg :weight bold))))
   `(git-commit-overlong-summary ((t (:foreground ,gruber-darker-red+1 :weight bold))))
   `(git-commit-nonempty-second-line ((t (:foreground ,gruber-darker-yellow))))
   `(git-commit-keyword ((t (:foreground ,gruber-darker-wisteria))))
   `(git-commit-trailer-token ((t (:foreground ,gruber-darker-wisteria))))
   `(git-commit-trailer-value ((t (:foreground ,gruber-darker-quartz))))
   `(git-commit-comment-branch-local ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(git-commit-comment-branch-remote ((t (:foreground ,gruber-darker-green :weight bold))))
   `(git-commit-comment-detached ((t (:foreground ,gruber-darker-brown :weight bold))))
   `(git-commit-comment-heading ((t (:foreground ,gruber-darker-fg :weight bold))))
   `(git-commit-comment-file ((t (:foreground ,gruber-darker-quartz))))
   `(git-commit-comment-action ((t (:foreground ,gruber-darker-bg+4))))
   `(git-commit-comment-button ((t (:foreground ,gruber-darker-niagara :underline t))))
   `(git-rebase-hash ((t (:foreground ,gruber-darker-quartz))))
   `(git-rebase-label ((t (:foreground ,gruber-darker-wisteria))))
   `(git-rebase-description ((t (:foreground ,gruber-darker-fg))))
   `(git-rebase-action ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(git-rebase-killed-action ((t (:foreground ,gruber-darker-bg+4 :strike-through t))))
   `(git-rebase-comment-hash ((t (:foreground ,gruber-darker-quartz))))
   `(git-rebase-comment-heading ((t (:foreground ,gruber-darker-fg :weight bold))))

   ;; Transient
   `(transient-heading ((t (:foreground ,gruber-darker-wisteria :weight bold))))
   `(transient-argument ((t (:foreground ,gruber-darker-brown :weight bold))))
   `(transient-inactive-argument ((t (:foreground ,gruber-darker-bg+4))))
   `(transient-inapt-argument ((t (:foreground ,gruber-darker-bg+4 :slant italic))))
   `(transient-value ((t (:foreground ,gruber-darker-green :weight bold))))
   `(transient-inactive-value ((t (:foreground ,gruber-darker-bg+4))))
   `(transient-delimiter ((t (:foreground ,gruber-darker-quartz))))
   `(transient-unreachable ((t (:foreground ,gruber-darker-bg+4))))
   `(transient-inapt-suffix ((t (:foreground ,gruber-darker-bg+4 :slant italic))))
   `(transient-active-infix ((t (:background ,gruber-darker-bg+1))))
   `(transient-enabled-suffix ((t (:foreground ,gruber-darker-green
                                   :background ,gruber-darker-green-bg :weight bold))))
   `(transient-disabled-suffix ((t (:foreground ,gruber-darker-red+1
                                    :background ,gruber-darker-red-bg :weight bold))))
   `(transient-higher-level ((t (:underline t))))
   `(transient-key ((t (:foreground ,gruber-darker-niagara))))
   `(transient-key-stay ((t (:foreground ,gruber-darker-green :weight bold))))
   `(transient-key-noop ((t (:foreground ,gruber-darker-bg+4))))
   `(transient-key-return ((t (:foreground ,gruber-darker-wisteria))))
   `(transient-key-recurse ((t (:foreground ,gruber-darker-brown))))
   `(transient-key-stack ((t (:foreground ,gruber-darker-niagara :weight bold))))
   `(transient-key-exit ((t (:foreground ,gruber-darker-red+1))))
   `(transient-unreachable-key ((t (:foreground ,gruber-darker-bg+4))))
   `(transient-nonstandard-key ((t (:foreground ,gruber-darker-yellow :underline t))))
   `(transient-mismatched-key ((t (:foreground ,gruber-darker-yellow :underline t))))

   ;; GPTel
   `(gptel-context-highlight-face ((t (:background ,gruber-darker-bg+1 :extend t))))
   `(gptel-context-deletion-face ((t (:background ,gruber-darker-red-bg :extend t))))
   `(gptel-rewrite-highlight-face ((t (:background ,gruber-darker-blue-bg :extend t))))
   `(gptel-response-highlight ((t (:background ,gruber-darker-bg-1 :extend t))))
   `(gptel-response-fringe-highlight ((t (:foreground ,gruber-darker-niagara))))

   ;; Multiple cursors
   `(mc/cursor-face ((t (:inverse-video nil :foreground ,gruber-darker-black
                           :background ,gruber-darker-yellow))))
   `(mc/cursor-bar-face ((t (:background ,gruber-darker-yellow :height 1))))
   `(mc/region-face ((t (:inherit region))))

   ;; Ghostel
   `(ghostel-default ((t (:foreground ,gruber-darker-fg :background ,gruber-darker-bg))))
   `(ghostel-fake-cursor ((t (:box (:line-width -1 :color ,gruber-darker-yellow)))))
   `(ghostel-fake-cursor-box ((t (:inherit cursor))))

   ;; Proof General
   `(proof-locked-face ((t (:background ,gruber-darker-niagara-2))))

   ;; Orderless
   `(orderless-match-face-0 ((t (:foreground ,gruber-darker-yellow))))
   `(orderless-match-face-1 ((t (:foreground ,gruber-darker-green))))
   `(orderless-match-face-2 ((t (:foreground ,gruber-darker-brown))))
   `(orderless-match-face-3 ((t (:foreground ,gruber-darker-quartz))))
   ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'my-gruber-darker)

;;; my-gruber-darker-theme.el ends here.
