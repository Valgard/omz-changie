if (( ! $+commands[changie] )); then
  if [[ -n "$CHANGIE_LOCATION" ]]; then
    if [[ ! -x "$CHANGIE_LOCATION" ]]; then
      echo "[oh-my-zsh] $CHANGIE_LOCATION is not executable"
      return
    fi
  elif [[ -x /opt/homebrew/bin/changie ]]; then
    CHANGIE_LOCATION="/opt/homebrew/bin/changie"
  elif [[ -x /usr/local/bin/changie ]]; then
    CHANGIE_LOCATION="/usr/local/bin/changie"
  elif [[ -x /home/linuxbrew/.linuxbrew/bin/changie ]]; then
    CHANGIE_LOCATION="/home/linuxbrew/.linuxbrew/bin/changie"
  elif [[ -x "$HOME/.linuxbrew/bin/changie" ]]; then
    CHANGIE_LOCATION="$HOME/.linuxbrew/bin/changie"
  else
    return
  fi

  # Only add changie installation to PATH if changie is
  # not already on the path, to prevent duplicate entries
  if [[ ":$PATH:" != *":$(dirname $CHANGIE_LOCATION):"* ]]; then
    PATH="$(dirname $CHANGIE_LOCATION):$PATH"
    export PATH
  fi
  unset CHANGIE_LOCATION
fi

alias ci="changie init"
alias ci!="changie init -f"
alias cn="changie new"
alias cna="changie new -k Added"
alias cnam="changie new -k Added -b"
alias cnc="changie new -k Changed"
alias cncm="changie new -k Changed -b"
alias cnd="changie new -k Deprecated"
alias cndm="changie new -k Deprecated -b"
alias cnf="changie new -k Fixed"
alias cnfm="changie new -k Fixed -b"
alias cnr="changie new -k Removed"
alias cnrm="changie new -k Removed -b"
alias cns="changie new -k Security"
alias cnsm="changie new -k Security -b"
alias cm="changie merge"
alias cmu="changie merge -u '## Unreleased'"
alias cmum="changie merge -u"
alias cb="changie batch"
alias cba="changie batch auto"
alias cbm="changie batch major"
alias cbi="changie batch minor"
alias cbp="changie batch patch"
alias cb!="changie batch -f"
alias cba!="changie batch -f auto"
alias cbm!="changie batch -f major"
alias cbi!="changie batch -f minor"
alias cbp!="changie batch -f patch"
alias cx="changie next"
alias cxa="changie next auto"
alias cxm="changie next major"
alias cxi="changie next minor"
alias cxp="changie next patch"
alias cxp="changie next -p"
alias cxap="changie next auto -p"
alias cxmp="changie next major -p"
alias cxip="changie next minor -p"
alias cxpp="changie next patch -p"
alias cl="changie latest"
alias clr="changie latest -r"
