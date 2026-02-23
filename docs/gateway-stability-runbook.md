# gateway stability runbook

## objective
Keep gateway uptime stable and recovery fast.

## baseline pattern
- Run gateway under persistent supervisor
- Use deterministic startup command
- Keep verification commands ready

## verify
- `openclaw status --deep`
- `tmux ls`
- `pgrep -af 'openclaw gateway run|openclaw-gateway-supervisor'`
- `tail -n 80 ~/.openclaw/logs/gateway-supervisor.log`

## common issues
- Pairing required / scope mismatch
- Supervisor command mismatch
- Tunnel/access path confusion
