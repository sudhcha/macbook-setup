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

if exists node; then
	echo "Node already installed"
else
	brew install node
fi

if exists code; then
	echo "Visual Code already installed"
else
	brew install --cask visual-studio-code
fi

if exists jupyter notebook; then
	echo "Anaconda/Jupyter Notebook already installed"
else
	brew install --cask anaconda
	echo "PATH=$HOME/brew/anaconda3/bin:$PATH" > ~/.zshrc
fi
