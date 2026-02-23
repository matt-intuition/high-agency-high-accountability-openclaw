# validation checklist

Use this after setup and after major changes.

## platform health
- [ ] `openclaw status --deep` shows gateway reachable
- [ ] primary channel is healthy

## hook automation
- [ ] `hooks-daily-run` exists and is enabled
- [ ] `hooks-weekly-run` exists and is enabled
- [ ] `hook-state.md` updates after run
- [ ] no silent hook failures

## operator visibility
- [ ] daily checklist message arrives on schedule
- [ ] checklist includes top 3 manual actions

## memory baseline
- [ ] memory flush enabled and prompt customized
- [ ] context pruning enabled
- [ ] hybrid memory search enabled
- [ ] threshold aligned to model profile (Claude 40k–50k / Codex 110k)

## vault integrity
- [ ] required folders exist (`00-hub`..`04-memory`)
- [ ] project template folder exists (`strategy/context/content`)
- [ ] naming conventions maintained

## security and boundaries
- [ ] safety boundaries documented and active
- [ ] group chat protocol documented
- [ ] optional weekly security scan configured
