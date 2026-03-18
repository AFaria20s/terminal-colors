#!/usr/bin/env bash

SHELL_CONFIG=""

if [ -f "$HOME/.zshrc" ]; then
  SHELL_CONFIG="$HOME/.zshrc"
elif [ -f "$HOME/.bashrc" ]; then
  SHELL_CONFIG="$HOME/.bashrc"
else
  echo "Could not find .zshrc or .bashrc"
  exit 1
fi

cp colors.sh "$HOME/.colors.sh"
chmod +x "$HOME/.colors.sh"

if grep -q "alias colors=" "$SHELL_CONFIG"; then
  echo "Alias already exists in $SHELL_CONFIG, skipping."
else
  echo "" >> "$SHELL_CONFIG"
  echo "alias colors='bash ~/.colors.sh'" >> "$SHELL_CONFIG"
  echo "Alias added to $SHELL_CONFIG"
fi

echo "Done. Run 'source $SHELL_CONFIG' or open a new terminal, then type 'colors'."
