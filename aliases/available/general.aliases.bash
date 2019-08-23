cite about-alias
about-alias 'general aliases'

if ls --color -d . &> /dev/null
then
  alias ls="ls --color=auto"
elif ls -G -d . &> /dev/null
then
  alias ls='ls -G'        # Compact view, show colors
fi

# List directory contents
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -Al'

#alias _="sudo"

# Shortcuts to edit startup files
#alias vbrc="vim ~/.bashrc"
#alias vbpf="vim ~/.bash_profile"

# colored grep
# Need to check an existing file for a pattern that will be found to ensure
# that the check works when on an OS that supports the color option
if grep --color=auto "a" "${BASH_IT}/"*.md &> /dev/null
then
  alias grep='grep --color=auto'
  export GREP_COLOR='1;33'
fi

if which gshuf &> /dev/null
then
  alias shuf=gshuf
fi

alias c='clear'
alias cls='clear'

alias edit="$EDITOR"
alias pager="$PAGER"

# Language aliases
alias py='python3'
alias ipy='ipython'

# Pianobar can be found here: http://github.com/PromyLOPh/pianobar/

alias ..='cd ..'         # Go up one directory
alias cd..='cd ..'       # Common misspelling for going up one directory
alias ...='cd ../..'     # Go up two directories
alias ....='cd ../../..' # Go up three directories
alias -- -='cd -'        # Go back

# Shell History
alias h='history'

# Tree
if [ ! -x "$(which tree 2>/dev/null)" ]
then
  alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
fi

# Directory
# Common misspellings of bash-it
alias bashit='bash-it'
# Display whatever file is regular file or folder
catt() {
  for i in "$@"; do
    if [ -d "$i" ]; then
      ls "$i"
    else
      cat "$i"
    fi
  done
}
