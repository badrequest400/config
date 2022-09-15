
#################################
# Main Install Script
# Installs all apps I use daily
#################################

# INSTALL HOMEBREW
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" &&

# INSTALL CASK FOR GETTING ALL APPS
brew tap caskroom/cask &&
brew install cask

# INSTALL oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


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
install firefox &&
install iterm2 &&
install evernote &&
install franz &&
install slack &&
install spectacle &&
install spotify &&
install docker &&
install flycut &&
install virtualbox &&

if [ ${#ERRORS[@]} -gt 0 ]; then
    echo "Could not install ALL apps successfully. Check installs.log for error reports."
fi

# INSTALL FUZZY FINDER
brew install fzf

# To install useful key bindings and fuzzy completion:
$(brew --prefix)/opt/fzf/install

echo "Don't forget to add Chrome extensions (vimium) and configure Seil to replace CapsLock"
