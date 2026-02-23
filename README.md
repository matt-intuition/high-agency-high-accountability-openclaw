# high-agency, high-accountability openclaw

A practical operating playbook for running OpenClaw as a reliable second brain.

This repository is designed for people who want strong outcomes with minimal chaos:
- stable operations
- durable memory
- clear ownership
- repeatable daily/weekly procedures

---

## what this setup gives you

A production-minded OpenClaw workflow that helps you:
- run reliably on a VPS
- keep decisions and context from getting lost
- manage work with structured notes
- scale toward multi-agent execution with guardrails
- maintain accountability through daily operational checklists

---

## recommended VPS setup flow

Use this setup guide for host provisioning and base install:

➡️ https://github.com/matt-intuition/vultr-openclaw-setup

This repo focuses on **operating model and procedures** after install.

---

## operating principles

1. **memory is engineered**
2. **structure beats improvisation**
3. **one source of truth**
4. **introduce complexity in phases**

---

## phased implementation model

### phase 1 — memory and context baseline

Purpose: stop context loss and improve recall reliability.

Core controls:
- memory flush policy
- context pruning policy
- hybrid retrieval configuration

#### recommended memory flush thresholds
- **Claude Code style setups:** ~**40k–50k**
- **Codex setup (this repo):** **110k**

> Keep flush prompts focused on: **decisions, state changes, lessons, blockers**.

### phase 2 — skill graph + governance

Purpose: create controlled execution and reduce multi-agent collisions.

Deliverables:
- skill graph map
- routing rules
- multi-agent protocol
- handoff contracts
- hook schedule + runbook + state tracking

### phase 3 — advanced memory/retrieval (gated)

Purpose: improve retrieval quality and scale after phases 1/2 are stable.

Examples:
- retrieval sidecars
- external memory layers
- graph-memory systems

Important:
- do **not** stack multiple advanced layers at once
- adopt one component at a time with clear go/no-go metrics

---

## optional / advanced: git sync

GitHub sync is useful for backup, portability, and multi-device editing.

It is **optional** and recommended after baseline ops are stable.

---

## docs

- [Phase 1 Memory Baseline](docs/phase-1-memory-baseline.md)
- [Phase 2 Operating Model](docs/phase-2-operating-model.md)
- [Phase 3 Decision Gates](docs/phase-3-decision-gates.md)
- [Hooks + Cron Operations](docs/hooks-and-cron-operations.md)
- [Security Boundaries + Group Chat Protocol](docs/security-boundaries-and-chat-protocol.md)
- [ClawdStrike Weekly Security Pattern](docs/clawdstrike-weekly-security.md)
- [Gateway Stability Runbook](docs/gateway-stability-runbook.md)
- [Optional Git Sync](docs/optional-gitsync.md)
- [Vault Template](vault-template/README.md)

## vault framework (replicable)

A complete starter Obsidian framework is included under `vault-template/` with:
- `00-hub`
- `01-inbox`
- `02-research`
- `03-projects` (+ `_template/strategy|context|content`)
- `04-memory`

This is the fastest way for others to replicate the operating model exactly.

---

## final note

Most agent failures are management failures, not model failures.

If you run OpenClaw with high agency and high accountability,
this system compounds fast.
