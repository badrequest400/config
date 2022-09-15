
install:
	install_apps
	copy

install_apps:
	./install.sh

install_apm:
	./apm-install.sh

copy:
	cp ./.zshrc ~/
	cp ./.zshenv ~/
	cp ./.gitconfig ~/
