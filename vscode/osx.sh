## Turns off Press and Hold accent letter context menu for VSCode so repeating keys work

echo "Turning off Press and Hold for VSCode"
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

echo "Turning off Press and Hold for Cursor"
cursor_id=$(osascript -e 'id of app "Cursor"')

if [ -n "$cursor_id" ]; then
defaults write "$cursor_id" ApplePressAndHoldEnabled -bool false
fi

echo "Turning off Press and Hold for Windsurf"
defaults write com.codeium.windsurf ApplePressAndHoldEnabled -bool false

echo "Turning off Press and Hold for PearAI"
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false
