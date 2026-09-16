#!/bin/bash
set -euo pipefail

echo " Setting up Local AI Environment..."

# Check OS
OS="$(uname -s)"
case "${OS}" in
    Linux*)     echo "Detected Linux";;
    Darwin*)    echo "Detected macOS";;
    *)          echo "Unsupported OS: ${OS}"; exit 1;;
esac

# Install Ollama
if ! command -v ollama &> /dev/null; then
    echo "Installing Ollama..."
    curl -fsSL https://ollama.com/install.sh | sh
else
    echo "✅ Ollama already installed"
fi

# Pull recommended models
MODELS=("deepseek-r1:8b" "qwen2.5:7b" "llama3.2:3b")
for model in "${MODELS[@]}"; do
    if ! ollama list | grep -q "$model"; then
        echo "Pulling $model..."
        ollama pull "$model"
    else
        echo "✅ $model already available"
    fi
done

# Create Modelfiles directory
mkdir -p automation/local-ai/modelfiles

echo "🎉 Local AI setup complete!"
echo "Run 'ollama run deepseek-r1:8b' to start chatting"