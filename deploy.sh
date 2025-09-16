#!/bin/zsh

set -e

HOST=xwp71006-3@xwp30.xel.nl

ssh "$HOST" rm -rf deploy && mkdir -p deploy
scp -r ./* "$HOST":~/deploy
ssh "$HOST" 'rm -rf clearblocks.nl/* && cp -r deploy/* clearblocks.nl'


echo "\n" Done! Visit https://clearblocks.nl to view the changes "\n"