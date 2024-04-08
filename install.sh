
#################################
# Main Install Script
# Installs all apps I use daily
#################################

# INSTALL HOMEBREW
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update



# INSTALL FUNCTION FOR ERROR REPORTING
ERRORS=()
function install {
    brew install $1
    RC=$?

    if [ $RC -ne 0]; then
        echo "Could not install $1" >> installs.log
        ERRORS+=($RC)
    fi
}


APPS=(
    visual-studio-code
    warp
    slack
    rectangle
    spotify
    flycut
)

# INSTALL ALL APPS
brew install ${APPS[@]}

#if [ ${#ERRORS[@]} -gt 0 ]; then
#    echo "Could not install ALL apps successfully. Check installs.log for error reports."
#fi


# INSTALL FUZZY FINDER
brew install fzf
  # To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install



# INSTALL oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Don't forget to remap CapsLock in System Preferences"
