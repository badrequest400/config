
# Disables OSX default of adding a period when you hit double space
# The setting is in System Preferences -> Keyboard -> Text Input -> Edit Button in Input Sources Section
echo "Disabling OSX default of adding a period when you hit double space"
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
