# dotfiles

make install

backup original dotfiles to $HOME/.mydotfiles.backup and make symbolic links to this repo

make uninstall

restore original dotfiles from backup

## VIM

### Main

* [Why vim (in russian)](https://guides.hexlet.io/vim/)
* Switch <kbd>ctrl</kbd> and <kbd>caps</kbd>
* Use <kbd>ctrl+[</kbd> instead of <kbd>esc</kbd>
* Plugin manager [junegunn/vim-plug](https://github.com/junegunn/vim-plug)

### File Tree and buffers

* <kbd>leader</kbd><kbd>leader</kbd> - [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)
* <kbd>ctrl+h</kbd> - move left to left split
* <kbd>ctrl+l</kbd> - move right to right split
* <kbd>ctrl+k</kbd> - move up to top split
* <kbd>ctrl+j</kbd> - move down to bottom split
* <kbd>leader</kbd><kbd>b</kbd> - show buffer list [jeetsukumaran/vim-buffergator](https://github.com/jeetsukumaran/vim-buffergator)
* <kbd>g</kbd><kbd>b</kbd> and <kbd>g</kbd><kbd>B</kbd> to flip through the most-recently used buffer stack

### Editing

* <kbd>g</kbd><kbd>c</kbd><kbd>c</kbd> - toggle commenting [tpope/vim-commentary](https://github.com/tpope/vim-commentary)
* <kbd>tab</kbd> - autocomplete [lifepillar/vim-mucomplete](https://github.com/lifepillar/vim-mucomplete)

## 42
I recommend
* using bash as instructions say `chsh -s /bin/bash`
* setting `alias gcc='gcc -Wall -Wextra -Werror'` and `alias norminette='norminette -R CheckForbiddenSourceHeader'` (check my `.bash_aliases` and `.bashrc` files)

