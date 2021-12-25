#!/bin/bash

exists()
{
  command -v "$1" >/dev/null 2>&1
}

if exists brew; then
	echo "Brew already installed"
else
	cd $HOME
	mkdir brew && curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C brew
	echo "PATH=$HOME/brew/bin:$PATH" > ~/.zshrc
fi
