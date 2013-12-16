#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# If we're on a Mac, let's install and setup homebrew.
if [ "$(uname -s)" == "Darwin" ]; then
    # Check for Homebrew
    if test ! $(which brew)
    then
      echo "  Installing Homebrew for you."
      ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)" > /tmp/homebrew-install.log
    fi

    # Install homebrew packages
    for formula in grc coreutils spark wget; do
        brew list $formula >/dev/null 2>1
        if [ $? -ne 0 ]; then
            echo "homebrew: installing $formula"
            brew install $formula
        else
            echo "homebrew: $formula already installed"
        fi
    done

    # Update any outdated brews
    brew upgrade
fi

exit 0
