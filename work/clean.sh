#!/bin/sh

# Clean out any work files that may have been linked into the vim settings
for f in ~/.vim/settings/work.vim ~/.vim/cpp.vimrc; do
    rm -f $f
done
