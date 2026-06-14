#!/bin/bash
# -----------------------------------------------------------------------------
# Harness Engineering Installer
# Installs agent harness templates into your project root.
# -----------------------------------------------------------------------------
set -e

TARGET_DIR="."
TEMPLATE_SRC=""

# Check if running locally inside the cloned harnesses-I-use repo
if [ -d "./templates" ] && [ -f "./templates/AGENTS.md" ]; then
    echo "💡 Detected local templates directory."
    TEMPLATE_SRC="local"
else
    echo "🌐 Downloading templates from GitHub main branch..."
    TEMPLATE_SRC="remote"
fi

echo "=== 🛡️ Bootstrapping Agent Harness ==="

# Create directories
mkdir -p "$TARGET_DIR/docs/agents"
echo "Created docs/agents/ directory."

copy_template() {
    local name=$1
    local dest=$2
    if [ "$TEMPLATE_SRC" = "local" ]; then
        cp "./templates/$name" "$dest"
    else
        curl -sSL "https://raw.githubusercontent.com/MasihMoafi/harnesses-I-use/main/templates/$name" -o "$dest"
    fi
    echo "  -> Created $dest"
}

# Copy files
copy_template "AGENTS.md" "$TARGET_DIR/AGENTS.md"
copy_template "init.sh" "$TARGET_DIR/init.sh"
copy_template "progress.md" "$TARGET_DIR/docs/agents/progress.md"
copy_template "feature_list.json" "$TARGET_DIR/docs/agents/feature_list.json"
copy_template "session-handoff.md" "$TARGET_DIR/docs/agents/session-handoff.md"
copy_template "clean-state.md" "$TARGET_DIR/docs/agents/clean-state.md"
copy_template "evaluator-rubric.md" "$TARGET_DIR/docs/agents/evaluator-rubric.md"
copy_template "quality-doc.md" "$TARGET_DIR/docs/agents/quality-doc.md"

# Make init.sh executable
chmod +x "$TARGET_DIR/init.sh"

echo ""
echo "✅ Bootstrapping complete!"
echo "👉 Read AGENTS.md in your project root to see how to guide your AI agents."
