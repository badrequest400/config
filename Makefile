
install:
	install_apps
	install_apm
	copy

install_apps:
	./install.sh

install_apm:
	./apm-install.sh

copy:
	cp ./.git-completion.bash ~/
	cp ./.bash_profile ~/
	cp ./.gitconfig ~/
