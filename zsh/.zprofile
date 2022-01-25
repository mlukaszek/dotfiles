if [[ $(uname -s) = "Darwin" ]]; then
  if [[ $(uname -p) = "arm" ]]; then
    BREW=/opt/homebrew
  elif [[ $(uname -p) = "i386" ]]; then
    BREW=/usr/local
  fi
fi

[ -d "$BREW" ] && eval "$($BREW/bin/brew shellenv)"
[ -d "/Applications" ] && export PATH=$PATH:/Applications/CMake.app/Contents/bin
