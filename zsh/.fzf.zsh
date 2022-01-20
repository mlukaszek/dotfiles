BREW="$(brew --prefix 2>/dev/null)"

if [ -d "$BREW" ]; then
  # Setup fzf
  # ---------
  if [[ ! "$PATH" == *$BREW/opt/fzf/bin* ]]; then
    export PATH="${PATH:+${PATH}:}$BREW/opt/fzf/bin"
  fi
  
  # Auto-completion
  # ---------------
  [[ $- == *i* ]] && source "$BREW/opt/fzf/shell/completion.zsh" 2> /dev/null
  
  # Key bindings
  # ------------
  source "$BREW/opt/fzf/shell/key-bindings.zsh"
fi

if [[ "$(uname -s)" == "Linux" ]]; then
  source /usr/share/doc/fzf/examples/completion.zsh
  source /usr/share/doc/fzf/examples/key-bindings.zsh
fi
