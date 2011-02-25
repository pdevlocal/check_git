#!/bin/sh
if [ "$IDENTITY_FILE" != "" ]; then
    IDFILE="-i$IDENTITY_FILE"
fi
CMD="ssh -oStrictHostKeyChecking=no $IDFILE"
exec $CMD "$@"
