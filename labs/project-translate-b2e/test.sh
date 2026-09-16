#!/bin/bash
set -euo pipefail

echo "🧪 Testing Translate-B2E Project..."

LAB_DIR="labs/project-translate-b2e"
PROMPT_FILE="$LAB_DIR/prompts/system-prompt.md"

# Check required files exist
if [ ! -f "$PROMPT_FILE" ]; then
    echo "❌ Missing: $PROMPT_FILE"
    exit 1
fi

# Validate prompt contains required sections
REQUIRED_SECTIONS=("ROLE" "AUTOMATIC TRANSLATION MODE" "SPOKEN ENGLISH" "VIDEO TUTORIAL")
for section in "${REQUIRED_SECTIONS[@]}"; do
    if ! grep -q "$section" "$PROMPT_FILE"; then
        echo "❌ Missing section: $section in $PROMPT_FILE"
        exit 1
    fi
done

echo "✅ Translate-B2E project validation passed!"