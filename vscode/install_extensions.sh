
EXTENSIONS=(
    ms-python.python # automatically install Pylance and Python Debugger
    vscodevim.vim
    eamodio.gitlens
    github.copilot
    github.copilot-chat
    wayou.vscode-todo-highlight
    yoavbls.pretty-ts-errors
    mohsen1.prettify-json
    graphql.vscode-graphql
    graphql.vscode-graphql-syntax
    golang.go
    ms-azuretools.vscode-docker
    tamasfe.even-better-toml
    charliermarsh.ruff
    github.vscode-pull-request-github
    dbaeumer.vscode-eslint
)

THEMES=(
    robbowen.synthwave-vscode
)

for extension in "${EXTENSIONS[@]}"
do
  code --install-extension "$extension"
done

for theme in "${THEMES[@]}"
do
  code --install-extension "$theme"
done

