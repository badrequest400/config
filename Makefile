
help: ## show this help message
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[$$()% 0-9a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

.PHONY: all
all: ## run all targets and do entire setup routine
	copy
	install_apps
	vscode
	osx
	js

.PHONY: install_apps
install_apps: ## install homebrew and use it to install UI apps. also installs oh-my-zsh
	./install.sh

.PHONY: vscode vscode_install vscode_copy vscode_turnoff_repeating_keys
vscode: ## run all vscode setup targets
	vscode_install
	vscode_copy
vscode_install: ## install vscode extensions and themes
	./vscode/install_extensions.sh
vscode_copy: ## copy vscode settings and keybindings to user config folder
	cp ./vscode/settings.json ~/Library/Application\ Support/Code/User/
	cp ./vscode/keybindings.json ~/Library/Application\ Support/Code/User/
vscode_osx: ## run vscode specific osx setup
	./vscode/osx.sh

.PHONY: js
js: ## install JS specific toolchain (nvm, node latest LTS, yarn)
	./toolchains/js/install.sh

.PHONY: osx
osx: ## run osx defaults setup
	./osx/defaults.sh

.PHONY: copy
copy: ## copy config files to home directory
	cp ./.zshrc ~/
	cp ./.zshenv ~/
	cp ./.gitconfig ~/
