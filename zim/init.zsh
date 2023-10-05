zimfw() { source /Users/zybium/.config/zim/zimfw.zsh "${@}" }
fpath=(/Users/zybium/.config/zim/modules/git/functions /Users/zybium/.config/zim/modules/utility/functions /Users/zybium/.config/zim/modules/git-info/functions /Users/zybium/.config/zim/modules/duration-info/functions /Users/zybium/.config/zim/modules/prompt-pwd/functions ${fpath})
autoload -Uz git-alias-lookup git-branch-current git-branch-delete-interactive git-branch-remote-tracking git-dir git-ignore-add git-root git-stash-clear-interactive git-stash-recover git-submodule-move git-submodule-remove mkcd mkpw coalesce git-action git-info duration-info-precmd duration-info-preexec prompt-pwd
source /Users/zybium/.config/zim/modules/environment/init.zsh
source /Users/zybium/.config/zim/modules/git/init.zsh
source /Users/zybium/.config/zim/modules/input/init.zsh
source /Users/zybium/.config/zim/modules/termtitle/init.zsh
source /Users/zybium/.config/zim/modules/utility/init.zsh
source /Users/zybium/.config/zim/modules/completion/init.zsh
source /Users/zybium/.config/zim/modules/duration-info/init.zsh
source /Users/zybium/.config/zim/modules/magicmace/magicmace.zsh-theme
source /Users/zybium/.config/zim/modules/zsh-completions/zsh-completions.plugin.zsh
source /Users/zybium/.config/zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /Users/zybium/.config/zim/modules/zsh-history-substring-search/zsh-history-substring-search.zsh
source /Users/zybium/.config/zim/modules/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /Users/zybium/.config/zim/modules/k/k.sh
source /Users/zybium/.config/zim/modules/zsh-autopair/zsh-autopair.plugin.zsh
source /Users/zybium/.config/zim/modules/zfm/zfm.zsh
source /Users/zybium/.config/zim/modules/zsh-z/zsh-z.plugin.zsh
source /Users/zybium/.config/zim/modules/fzf-tab/fzf-tab.zsh
source /Users/zybium/.config/zim/env.zsh
source /Users/zybium/.config/zim/aliases.zsh

