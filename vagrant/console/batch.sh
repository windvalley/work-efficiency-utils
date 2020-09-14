#!/usr/bin/env bash
# batch.sh


NODES="node1
node2
node3
node4
node5
node6
"

COMMANDS="$*"

for node in $NODES;do
    echo "*********************** $node ************************"

    # shellcheck disable=SC2029
    ssh "$node" "$COMMANDS" 2>/dev/null

done
