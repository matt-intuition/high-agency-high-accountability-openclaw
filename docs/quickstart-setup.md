# quickstart setup

Use this to replicate the framework on your own OpenClaw environment.

## 1) install and baseline host
- follow VPS/base install guide:
  - https://github.com/matt-intuition/vultr-openclaw-setup
- confirm `openclaw status --deep` works

## 2) create/open your Obsidian vault
- copy `vault-template/` into your vault path
- keep naming conventions:
  - lowercase
  - hyphen-separated

## 3) apply phase-1 memory config
Set in your OpenClaw config (`openclaw.json`):
- memory flush enabled
- memory flush prompt focused on decisions/state changes/lessons/blockers
- context pruning enabled (`cache-ttl`)
- hybrid memory search enabled

Recommended flush thresholds:
- Claude-style setups: 40k–50k
- Codex setup: 110k

## 4) configure required cron jobs
- create all jobs from `docs/cron-jobs-required.md`
- optional: run `scripts/bootstrap-cron.sh`

## 5) validate operations
- run checklist in `docs/validation-checklist.md`
- ensure first daily hook run updates expected files
- ensure daily operator checklist arrives on your primary channel

## 6) begin project execution
- start in `03-projects/<project>/strategy`
- use handoff contracts for multi-agent workflows
- run daily and weekly operating cadence
