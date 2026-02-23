# hooks and cron operations

## why this exists

Documentation-only hooks are not enough. Hooks must be executable, scheduled, and visible.

## execution contract

A valid hook system should:
1. run on a schedule (daily + weekly)
2. update state files every run
3. report no-op explicitly (`no-material-change`)
4. surface blockers immediately

## recommended daily hook cycle

Run:
- context compaction
- memory distillation (light)
- self-learning loop (if meaningful outcomes)
- backlog gardening

Update:
- `00-hub/context-state.md`
- `00-hub/current-focus.md`
- `01-inbox/inbox-state.md`
- `00-hub/backlog-health.md`
- `00-hub/hook-state.md`

## recommended weekly hook cycle

Run:
- memory distillation (deep)
- skill-graph hygiene
- multi-agent orchestration review
- backlog hard prune

Update:
- `04-memory/long-term-memory.md`
- `04-memory/decision-log.md`
- `00-hub/skill-graph.md`
- `00-hub/skill-routing-rules.md`
- `00-hub/multi-agent-protocol.md`
- `00-hub/handoff-contracts.md`
- `00-hub/backlog-health.md`
- `00-hub/hook-state.md`

## cron recommendation

- one daily checklist cron for operator awareness
- one daily hook execution cron
- one weekly deep-maintenance cron
- one weekly security audit cron

## anti-drift rule

If hooks fail twice in a row, pause dependent automation and escalate with:
- blocker
- impact
- exact remediation steps
