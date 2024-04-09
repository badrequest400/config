
setup:
	copy
	install_apps
	vscode
	js

install_apps:
	./install.sh

vscode:
	vscode_install
	vscode_copy
vscode_install:
	./vscode/install.sh
vscode_copy:
	cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/
	cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User/
vscode_turnoff_repeating_keys:
	./vscode/repeating_keys.sh

js:
	./toolchains/js/install.sh

copy:
	cp ./.zshrc ~/
	cp ./.zshenv ~/
	cp ./.gitconfig ~/
