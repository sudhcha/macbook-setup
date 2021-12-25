#!/bin/bash
cd $HOME
mkdir brew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C brew


echo "PATH=$HOME/brew/bin:$PATH" > ~/.zshrc
