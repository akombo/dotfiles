#!/usr/bin/env bash

echo 'Changing current directory to home.'
cd || exit 1

if [[ ! -e ~/original-dotfiles ]]; then
    echo 'Creating ~/original-dotfiles.'
    mkdir ~/original-dotfiles || exit 1
fi

for FILE in ~/.bash* ~/.vim*; do
    if [[ -f "$FILE" ]]; then
        BASENAME="${FILE##*/}"
        mv -v "$FILE" ~/original-dotfiles/"${BASENAME#.}" || exit 1
    fi
done

if [[ -e bin ]]; then
    mv -v bin ~/original-dotfiles || exit 1
fi

if [[ -e etc ]]; then
    mv -v etc ~/original-dotfiles || exit 1
fi

if [[ `whoami` != 'akomblevitz' &&  -e /home/`whoami`/.rvm ]]; then
    ln -vs /home/`whoami`/.rvm .rvm
fi

ln -vs dotfiles/etc     etc           || exit 1
ln -vs dotfiles/bin     bin           || exit 1

ln -vs etc/bash_profile .bash_profile || exit 1
ln -vs etc/bashrc       .bashrc       || exit 1
ln -vs etc/vimrc        .vimrc        || exit 1
ln -vs etc/vim          .vim          || exit 1
