@'
#!/bin/sh
set -eu

if [ $# -gt 0 ] && [ "${1#-}" != "$1" ]; then
    set -- ansible "$@"
fi

exec "$@"
'@
