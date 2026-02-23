# required cron jobs

These jobs make hooks executable and keep the operator informed.

## job 1: hooks-daily-run
- schedule: daily at 18:00 UTC
- purpose: run daily hook cycle
- minimum outputs:
  - `00-hub/context-state.md`
  - `00-hub/current-focus.md`
  - `01-inbox/inbox-state.md`
  - `00-hub/backlog-health.md`
  - `00-hub/hook-state.md`

## job 2: hooks-weekly-run
- schedule: sunday at 18:15 UTC
- purpose: run deep weekly maintenance cycle
- minimum outputs:
  - `04-memory/long-term-memory.md`
  - `04-memory/decision-log.md`
  - `00-hub/skill-graph.md`
  - `00-hub/skill-routing-rules.md`
  - `00-hub/multi-agent-protocol.md`
  - `00-hub/handoff-contracts.md`
  - `00-hub/backlog-health.md`
  - `00-hub/hook-state.md`

## job 3: phase2-operator-checklist-daily
- schedule: daily at 19:00 UTC
- purpose: deliver concise operator checklist
- content should include:
  - hooks run/missed
  - context health
  - backlog health
  - governance/collision risks
  - top 3 manual actions

## job 4: clawdstrike-weekly-scan (optional but recommended)
- schedule: monday at 10:00 UTC
- purpose: verified-mode security audit pattern
- output: OK/VULNERABLE summary with evidence and fixes

## failure policy
- if a hook job fails twice in a row:
  - escalate with blocker + remediation
  - pause dependent automation until fixed
