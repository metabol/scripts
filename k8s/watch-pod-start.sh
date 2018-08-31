#/bin/bash
while [ 1 -lt 2 ]; do kubectl describe pod $1 | tail - ;done


