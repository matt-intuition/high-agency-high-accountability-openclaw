#!/usr/bin/env bash
set -euo pipefail

# bootstrap required cron jobs for the framework.
# edit TELEGRAM_TO if your target differs.

TZ_NAME="UTC"
TELEGRAM_TO="449296071"

openclaw cron add --name hooks-daily-run --session isolated --cron "0 18 * * *" --tz "$TZ_NAME" --announce --channel telegram --to "$TELEGRAM_TO" --message "Execute the daily hook cycle using hook-registry + hook-execution-contract. Run: context-compaction, memory-distillation(light), self-learning-loop(if meaningful), backlog-gardening. Update: 00-hub/context-state.md, 00-hub/current-focus.md, 01-inbox/inbox-state.md, 00-hub/backlog-health.md, 00-hub/hook-state.md. If no material updates, write no-material-change. Return concise summary + blockers."

openclaw cron add --name hooks-weekly-run --session isolated --cron "15 18 * * 0" --tz "$TZ_NAME" --announce --channel telegram --to "$TELEGRAM_TO" --message "Execute the weekly hook cycle using hook-registry + hook-execution-contract. Run: memory-distillation(deep), skill-graph-hygiene, multi-agent-review, backlog-hard-prune. Update: 04-memory/long-term-memory.md, 04-memory/decision-log.md, 00-hub/skill-graph.md, 00-hub/skill-routing-rules.md, 00-hub/multi-agent-protocol.md, 00-hub/handoff-contracts.md, 00-hub/backlog-health.md, 00-hub/hook-state.md. If no material updates, write no-material-change. Return concise summary + risks."

openclaw cron add --name phase2-operator-checklist-daily --session isolated --cron "0 19 * * *" --tz "$TZ_NAME" --announce --channel telegram --to "$TELEGRAM_TO" --message "Generate a concise daily operator checklist: hooks run/missed, context health, backlog health, governance/collision risks, top 3 manual actions, escalations only if urgent."

openclaw cron add --name clawdstrike-weekly-scan --session isolated --cron "0 10 * * 1" --tz "$TZ_NAME" --announce --channel telegram --to "$TELEGRAM_TO" --message "Run weekly ClawdStrike pattern in verified-mode only. Strict allowlist collection, no remote installer commands, evidence-backed OK/VULNERABLE report, fix instructions, redact sensitive data. If clawdstrike paths are missing, return blocker + remediation."

echo "Cron bootstrap complete. Verify with: openclaw cron list"
