#!/bin/bash
# -----------------------------------------------------------------------------
# init.sh - Agent Workspace Initialization & Baseline Verification Script
# -----------------------------------------------------------------------------
set -e

# USER: Edit these commands to match your project stack
INSTALL_CMD="npm install"
VERIFY_CMD="npm test"
START_CMD="npm run dev"

echo "=== 📂 Checking Workspace ==="
echo "Current Working Directory: $(pwd)"
echo ""

echo "=== 📦 Installing Dependencies ==="
echo "Running: $INSTALL_CMD"
eval "$INSTALL_CMD"
echo "✅ Dependencies installed."
echo ""

echo "=== 🧪 Running Baseline Verification ==="
echo "Running: $VERIFY_CMD"
if eval "$VERIFY_CMD"; then
    echo "✅ Baseline verification PASSED."
else
    echo "❌ Baseline verification FAILED!"
    echo "Please resolve existing errors before implementing new features."
    exit 1
fi
echo ""

if [ "$RUN_START" = "1" ]; then
    echo "=== 🚀 Launching Development Server ==="
    echo "Running: $START_CMD"
    eval "$START_CMD"
else
    echo "💡 Run with RUN_START=1 to launch the dev server: 'RUN_START=1 ./init.sh'"
fi
