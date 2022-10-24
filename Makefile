DEPENDENCIES = git nodejs npm python3 build-essential g++ libx11-dev libxkbfile-dev libsecret-1-dev python-is-python3

all:
	@echo "Installing dependencies"
	sudo apt-get install $(DEPENDENCIES)
	@echo "Installing yarn"
	npm intall --global yarn
	@echo "Cloning VSCode Github repository"
	git clone https://github.com/microsoft/vscode $(HOME)/vscode
	@echo "Building VSCode"
	cd $(HOME)/vscode
	yarn
