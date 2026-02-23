# phase 3: decision gates

## objective
Adopt advanced memory/retrieval safely and incrementally.

## common overlap risks
- Multiple memory writers with no source hierarchy
- Duplicate retrieval layers
- Graph duplication without sync contract

## sequencing
1. Read-only corpus indexing pilot
2. Choose one advanced memory layer (not many)
3. Add graph memory only if relationship queries demand it

## go/no-go gates
- Recall quality benchmark passes
- Provenance coverage acceptable
- Latency within budget
- Contradiction/false-memory rate stable
- Clear rollback path exists
