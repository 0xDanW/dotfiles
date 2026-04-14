#!/bin/zsh

# Homebrew
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Common tools
tools=(
  "git"
  "gh"
  "go"
  "jq"
  "yq"
  "kubectx"
  "kubernetes-cli"
  "kustomize"
  "helm"
  "colima"
  "node"
  "tofuenv"
  "opentofu"
)

# List of casks
casks=(
  "discord"
  "visual-studio-code"
  "leapp"
  "warp"
  "rectangle"
)

# Install common tools
for tool in "${tools[@]}"; do
  brew install "$tool"
done

# Install casks
for cask in "${casks[@]}"; do
  brew install --cask "$cask"
done

echo "DONE!"
exit 0
