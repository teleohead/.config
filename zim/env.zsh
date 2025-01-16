export EDITOR=nvim
export XDG_CONFIG_HOME=$HOME/.config/
export RANGER_LOAD_DEFAULT_RC="false"
export ZIM_HOME=$XDG_CONFIG_HOME/zim/
export PATH=$PATH:/opt/homebrew/bin

# RUBY on macOS
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
export PATH="/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

# Zathura
export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/teleohead/.opam/opam-init/init.zsh' ]] || source '/Users/teleohead/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
