# Engineering Protocol

## Defaults

- Work local-first.
- Prefer small, reversible changes.
- Read the existing code before deciding.
- Use structured APIs/parsers where available.
- Avoid placeholders and untested claims.
- Test before presenting when code changed.

## Python

- Use `uv` for package management.
- Use a virtual environment.
- Prefer Pydantic or typed structures for LLM/data outputs.
- Avoid brittle string parsing when a structured parser exists.

## Data

- For CSVs, inspect headers and a few rows first.
- Do not load full large datasets unless the task requires it.
- Align transformations with the real schema and valid values.

## Git

- Keep commits small and scoped.
- Stage explicit paths only.
- Do not push or open PRs unless asked.
