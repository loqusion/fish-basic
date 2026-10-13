fish_config theme choose Nord

set -gx LOCALE_ARCHIVE /usr/lib/locale/locale-archive

set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR

set -gx GOPATH $HOME/.go
set -gx CARGO_HOME $HOME/.cargo

fish_add_path $CARGO_HOME/bin
fish_add_path $GOPATH/bin
fish_add_path ~/.bin
fish_add_path ~/.local/bin

set -U fish_greeting ""

set -Ux LESS -rQM
set -Ux MANPAGER "nvim +Man!"

abbr mv "mv -iv"
abbr cp "cp -riv"
# abbr rm trash
abbr mkdir "mkdir -vp"
abbr l ll
abbr tree "eza --tree --git-ignore"
abbr b bat

abbr vim nvim
abbr vi nvim
abbr v nvim
abbr vd "cd ~/.config/nvim && $EDITOR"
abbr sv sudoedit
abbr vsudo sudoedit
alias vup "__dotfiles_push 'chore(vim): upgrade' ~/.config/nvim/lazy-lock.json"

abbr lg lazygit

abbr df "df -h"
abbr du "du -h"
abbr bc "bc -ql"
abbr caf "caffeinate -d"
abbr tarify "tar czpvf"
abbr untar "tar xvf"
abbr glow "glow -p"
abbr ub unbuffer

abbr parup --set-cursor 'paru -Gpa % | bat -l PKGBUILD'
alias paru-orphans 'paru -Qdtq'
alias paru-remove-all-orphans 'paru -Qdtq | paru -Rns -'

abbr zj zellij
abbr zja "zellij attach"

abbr ... "cd ../.."
abbr .... "cd ../../.."
