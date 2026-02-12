#!/bin/sh

# Install & setup Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install stuff from Brewfile
brew bundle --file=./Brewfile

# Setup Git
git config --global user.email "sajayprakashk@gmail.com"
git config --global user.name "Sajay Prakash"
