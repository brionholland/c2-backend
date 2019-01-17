#!/bin/bash -l
TOOLNAME=TlmExtractor
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
rm $DIR/$TOOLNAME
ln -s `which ruby` $DIR/$TOOLNAME
exec $DIR/$TOOLNAME $DIR/$TOOLNAME.rb "$@" &
