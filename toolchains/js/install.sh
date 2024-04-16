
# Node
## Install nvm
echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

## Install latest LTS node
echo "Installing latest LTS node"
nvm install --lts

## Install yarn and other package managers
echo "Installing yarn via corepack"
corepack enable yarn

# TODO: Maybe eventually move all the above to Volta
