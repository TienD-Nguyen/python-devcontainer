#!/bin/bash
cp .devcontainer/auth.json "$HOME/.pi/agent/auth.json"

echo "Pi Code Version: $(pi --version)$"
echo "UV Version: $(uv --version)"
echo "Git Version: $(git --version)"
echo "Python Version: $(python --version)"

echo "post-create setup complete"