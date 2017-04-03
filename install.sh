
#################################
# Main Install Script
# Installs all apps I use daily
#################################

# INSTALL HOMEBREW
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &&

# INSTALL CASK FOR GETTING ALL APPS
brew tap caskroom/cask &&
brew install cask


# INSTALL FUNCTION FOR ERROR REPORTING
ERRORS=()
function install {
    brew cask install $1
    RC=$?

    if [ $RC -ne 0]; then
        echo "Could not install $1" >> installs.log
        ERRORS+=($RC)
    fi
}


# INSTALL ALL APPS
install atom &&
install google-chrome &&
install iterm2 &&
install evernote &&
install franz &&
install slack &&
install spectacle &&
install spotify &&
install alfred &&
install docker &&
install flycut &&
install seil &&
install skype &&
install virtualbox &&

if [ ${#ERRORS[@]} -gt 0 ]; then
    echo "Could not install ALL apps successfully. Check installs.log for error reports."
fi

echo "Don't forget to add Chrome extensions (vimium) and configure Seil to replace CapsLock"
