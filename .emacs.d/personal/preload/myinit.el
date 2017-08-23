(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "Microsoft Yahei" :size 12)))

;; 关闭文件滑动控件
(scroll-bar-mode -1)

;; 显示行号
(global-linum-mode 1)

;; (electric-pair-mode 1)
;; (show-paren-mode 1)

;; (require 'smartparens-config)

(add-hook 'emacs-lisp-mode-hook #'smartparens-mode)




;; 更改光标的样式（不能生效，解决方案见第二集）
(setq-default cursor-type 'bar)
