# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "/Applications/calibre.app/Contents/console.app/Contents/MacOS/" ] ; then
    PATH="/Applications/calibre.app/Contents/console.app/Contents/MacOS/:$PATH"
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/bill/google-cloud-sdk/path.bash.inc' ]; then source '/Users/bill/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/bill/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/bill/google-cloud-sdk/completion.bash.inc'; fi

export PATH=/Library/PostgreSQL/10/bin/:$PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
