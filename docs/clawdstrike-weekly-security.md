# clawdstrike weekly security pattern

## purpose

Run recurring host security audits with verified evidence and safe defaults.

## recommended model

- collection mode: verified-only
- strict allowlist collection
- no remote execution during collection
- outputs: `ok` / `vulnerable` with evidence + fix guidance
- mandatory evidence source: `verified-bundle.json`

## schedule

- weekly: monday 10:00 UTC

## operating safety

- do not change system by default
- provide fix instructions first
- redact sensitive data in reports

## implementation note

If your environment uses ClawdStrike assets, keep these paths explicit in your runbook:
- `/root/clawd/skills/clawdstrike/SKILL.md`
- `/root/clawd/skills/clawdstrike/references/`
- `/root/clawd/skills/clawdstrike/scripts/`

If paths are missing, report blocker + remediation instead of guessing.
