# Standard Python Project Structure

Created: 2025-11-26

## Directory Layout

```
project/
├── src/              # Source code (main package)
│   ├── package/      # Core package modules
│   ├── tools/        # Utility scripts
│   └── __init__.py
├── docker/           # Docker configuration
│   ├── Dockerfile    # Multi-stage build
│   ├── docker-compose.yml
│   └── README.md     # Docker usage guide
├── notebooks/        # Jupyter notebooks
│   ├── examples/     # Usage examples
│   ├── experiments/  # Research notebooks
│   └── tutorials/    # Step-by-step guides
├── tests/            # Test suite
│   ├── fixtures/     # Test data (real docs)
│   ├── test_*.py     # Test files
│   └── conftest.py   # Pytest configuration
├── docs/             # Documentation
├── examples/         # Standalone usage examples
├── packages/         # Pip-installable packages
├── pyproject.toml    # Project metadata (modern standard)
├── requirements.txt  # Dependencies (or uv.lock)
├── README.md         # Main documentation
├── .gitignore        # Git exclusions
└── .dockerignore     # Docker exclusions
```

## Docker Structure

### Multi-stage Builds

```dockerfile
FROM python:3.12-slim as base
# Base dependencies

FROM base as development
# Dev tools + all dependencies

FROM base as production
# Minimal runtime

FROM development as testing
# Testing environment
```

### docker-compose.yml Services

1. **Production server** - Minimal runtime
2. **Development** - Hot reload + Jupyter
3. **Testing** - Pytest suite
4. **Optional services** - Databases, etc.

## Key Files

### .dockerignore
```
__pycache__/
.venv/
.git/
*.pdf
*.db
docs/
examples/
node_modules/
```

### .gitignore
```
__pycache__/
.venv/
*.pyc
*.db
.pytest_cache/
.coverage
```

## Best Practices

1. **Use pyproject.toml** over setup.py (modern standard)
2. **Multi-stage Docker** for smaller images
3. **Volume mounts** for persistence
4. **Real fixtures** in tests, not synthetic data
5. **Dedicated READMEs** in subdirectories
6. **Standard naming**: test_*.py, *_test.py

## Gitingest for GitHub Content

Instead of cloning repos, use gitingest.com:

```
https://github.com/microsoft/playwright-python
→ https://gitingest.com/microsoft/playwright-python
```

**Benefits:**
- Single-page machine-readable format
- Perfect for RAG indexing
- Includes structure + code
- No need to clone

**Implementation:**
```python
def convert_to_gitingest(github_url: str) -> str:
    return github_url.replace('github.com', 'gitingest.com')
```

## UV Package Manager

Prefer UV over pip for speed:

```bash
# Install
curl -LsSf https://astral.sh/uv/install.sh | sh

# Sync dependencies
uv sync

# Add package
uv pip install package-name
```

## Testing Philosophy

❌ **Don't:**
- Create synthetic test documents
- Hardcode test results
- Use tiny fake fixtures

✅ **Do:**
- Use real documents (PDFs, code, docs)
- Test with actual project files
- Verify real functionality
