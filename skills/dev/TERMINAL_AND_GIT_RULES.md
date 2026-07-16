# Terminal, Proxy, Git, and Change Safety

## Terminal Aliases
- Learn and use project-specific terminal aliases from `~/.bash_aliases` when they make terminal work faster.
- In non-interactive commands, run `source ~/.bash_aliases; <alias-command>` when using aliases.
- Common navigation aliases include:
  - `d` = `~/Desktop`
  - `cdp` = `~/Desktop/p` (Projects directory)
- Common proxy aliases include:
  - `check` = show active proxy env
  - `rel` = set proxy to port `8085`
  - `vpn` / `vv` = set proxy to port `10808`
  - `nopr` / `nope` = unset proxy env variables
- Prefer explicit absolute paths in scripts and persistent docs, but use aliases freely for interactive checks.

## Proxy and SSH
- Proxy budget: when traffic uses port `8085`, downloads are acceptable; when using port `10808`, keep internet usage minimal.
- When proxy state matters, run `source ~/.bash_aliases; check` to verify the active proxy environment instead of guessing.
- For SSH over SOCKS when normal configurations hang, use a batched command with timeout constraints:
  ```bash
  ssh -o BatchMode=yes -o NumberOfPasswordPrompts=0 -o ConnectTimeout=45 -o ServerAliveInterval=10 -o ServerAliveCountMax=2 -o 'ProxyCommand=nc -w 45 -x 127.0.0.1:10808 -X 5 %h %p' <host> '<read-only-command>'
  ```

## Git Safety
- Never use `git add -A`.
- Stage explicit file paths only.
- Keep commits small and scoped.
- Do not push, open PRs, or upload artifacts unless explicitly requested.

## Change Safety
- Prefer small, reversible changes.
- Preserve existing API/runtime behavior unless explicitly asked to change it.
- Provide a rollback command/checkpoint before risky actions.
- Do not modify, remove, or rewrite shell aliases/functions unless explicitly asked.
- For root commands, use `pkexec <command>` when terminal sudo cannot accept password input, enabling a GUI-based password prompt.
