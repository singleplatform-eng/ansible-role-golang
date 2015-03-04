__DEFAULT_GODIR='/usr/local/go'

# Set GOPATH to a sane default if not currently set
GOPATH=${GOPATH:-$__DEFAULT_GODIR}

if [[ ! ":$PATH:" == *":go/bin:"* ]]; then
    # If user already put
    # userdir go first, then default

    # put default godir + bin first in case we installed a custom version...
    export PATH="$HOME/go:$GOPATH:$GOPATH/bin:$PATH"

    # for go bin at the very end...
    #export PATH="$HOME/go:$PATH:$__DEFAULT_GODIR/bin"

fi

unset __DEFAULT_GODIR