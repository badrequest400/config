## Turns off Press and Hold accent letter context menu for VSCode so repeating keys work
echo "Turning off Press and Hold for VSCode"
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
