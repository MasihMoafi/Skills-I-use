# Terminal, Proxy, Git, and Change Safety

## Terminal Aliases

- Learn and use Masih's terminal aliases from `~/.bash_aliases` when they make terminal work faster.
- In non-interactive commands, run `source ~/.bash_aliases; <alias-command>` when using aliases.
- Known navigation aliases include `d` = `~/Desktop`, `p`/`cdp` = `~/Desktop/p`, `l` = `~/Desktop/l`, and `andrej` = `~/Desktop/l/andrej`.
- Known proxy aliases include `check` = show active proxy env, `rel` = set proxy to `127.0.0.1:8085`, `vpn`/`vv` = set proxy to `127.0.0.1:10808`, and `nopr`/`nope` = unset proxy env.
- `op <path>` opens a file/folder through the user's desktop opener from `~/.bash_aliases`.
- Prefer explicit absolute paths in scripts and persistent docs, but use aliases freely for interactive terminal navigation and quick checks.

## Proxy And SSH

- Proxy budget nuance: when traffic is using port `8085`, downloads are acceptable; when using port `10808`, be stingy with internet usage.
- When proxy state matters, run `source ~/.bash_aliases; check` to see the active proxy environment instead of guessing.
- For SSH over SOCKS when normal config hangs, use one explicit batched command before retrying:

```bash
ssh -o BatchMode=yes -o NumberOfPasswordPrompts=0 -o ConnectTimeout=45 -o ServerAliveInterval=10 -o ServerAliveCountMax=2 -o 'ProxyCommand=nc -w 45 -x 127.0.0.1:10808 -X 5 %h %p' <host> '<read-only-command>'
```

- A `banner exchange` timeout often means proxy/TCP negotiation; test once with `nc -w 30 -x 127.0.0.1:10808 -X 5 <host> 22` and avoid parallel repeated SSH attempts.

## Git Safety

- Never use `git add -A`.
- Stage explicit file paths only.
- Keep commits small and scoped.
- Do not push, open PRs, or upload artifacts unless explicitly requested.

## Change Safety

- Prefer small, reversible changes.
- Preserve existing API/runtime behavior unless explicitly asked to change it.
- Provide a rollback command/checkpoint before risky actions.
- Do not create, remove, rewrite, or "fix" shell aliases/functions unless Masih directly asks for an alias change or reports a specific alias bug. If an alias change is explicitly requested, use `~/.bash_aliases`; avoid making alias changes in separate places.
- Before changing `~/.bash_aliases` proxy commands, verify these invariants from the current file and preserve them unless Masih explicitly says otherwise:
  - `vv` and `vpn` must set every proxy variable they manage to `127.0.0.1:10808`.
  - `rel` must set every proxy variable it manages to `127.0.0.1:8085`.
  - `nopr` and `nope` must unset proxy variables.
  - Never propagate `rel`/`8085` semantics into `vv`/`vpn`.
  - After editing, run `bash -lc 'source ~/.bash_aliases; vv; check; nopr; check; rel; check'` and inspect that the output matches the invariants.
- Every persistent change should have a clear earmarked place.
- If you find a reusable harness/workflow, ask Masih before adding it to global rules.
- For Ubuntu GUI sudo prompts, use `pkexec <command>` when terminal sudo cannot accept the password in the UI.
