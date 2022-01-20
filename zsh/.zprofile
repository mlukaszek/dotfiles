BREW="$(brew --prefix 2>/dev/null)"

[ -n "$BREW" ] && eval "$($BREW/bin/brew shellenv)"
[ -d "/Applications" ] && export PATH=$PATH:/Applications/CMake.app/Contents/bin
