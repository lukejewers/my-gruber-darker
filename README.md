# my-gruber-darker-theme

A fork of [gruber-darker-theme](https://github.com/rexim/gruber-darker-theme).

## Install

Clone the repo and add it to your load path:

```elisp
(add-to-list 'custom-theme-load-path "~/path/to/my-gruber-darker/")
(load-theme 'my-gruber-darker t)
```

Or with `use-package` on Emacs 30+:

```elisp
(use-package my-gruber-darker-theme
  :vc (:url "https://github.com/lukejewers/my-gruber-darker")
  :config
  (load-theme 'my-gruber-darker :no-confirm))
```

## Credit

Original work by Jason Blevins and Alexey Kutepov, based on John Gruber's Gruber Dark theme for BBEdit.
