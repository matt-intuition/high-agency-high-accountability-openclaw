# phase 1: memory baseline

## objective
Make memory reliable before adding complexity.

## implement
- Enable memory flush with explicit capture prompt:
  - decisions
  - state changes
  - lessons
  - blockers
- Enable context pruning (TTL mode)
- Enable hybrid retrieval
- Include session transcripts in retrieval sources where supported

## threshold guidance
- Claude-style: 40k–50k
- Codex (this setup): 110k

## validation checklist
- Decisions from long sessions are recoverable next day
- Fewer “repeat-yourself” incidents
- No major recall regressions over 3-day window
