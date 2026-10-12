# AGENTS.md

Purpose: A template for new Python projects, I personally use, featuring 
[DevContainer](https://containers.dev), [uv](https://docs.astral.sh/uv/) and 
[Pi Coding Agent](https://pi.dev). This allows subsequent projects to have a 
common structure and setup, while having rooms for modifications, especially with
agents harness.

## Start-up tasks (new session)
Before writing code:

1. **Confirm working directory** with `pwd`
2. **Read this file** completely
3. **Read project docs if present** (`PROGRESS.md`, `DECISIONS.md`, `README.md`, or equivalent)
4. **Run** `./init.sh` to verify environment is health
5. **Review recent commits** with `git log --oneline -5` and `git status` — see where the last session ended

If baseline verification is failing, repair that first before adding new scope.

## Working Rules

- **One feature at a time**: Pick exactly one unfinished feature to work at a time
- **Verification required**: Do not claim done without running verification commands
- **Update artifacts**: Before ending session, update `PROGRESS.md` and `feature_list.json`
- **Stay in scope**: Do not modify files unrelated to the current feature
- **Leave clean state**: Next session must be able to run `./init.sh` immediately

## Required Artifacts

- `PROGRESS.md` - Session continuity log
- `init.sh` - Standard startup and verification path
- `feature_list.json` - Feature state tracker (source of truth)

## Definition of Done

A feature is done only when ALL of the following are true:

[] Target behavior is implemented
[] Required verification actually ran (tests / lint / type-check)
[] Evidence recorded in `PROGRESS.md`
[] Repository remains restartable from standard startup path

## Clock-out tasks (end of session)

1. Update `PROGRESS.md` with current state, move finished items to Completed, refresh Known-issues and next steps
2. Append any design decisions to `DECISIONS.md`
3. Record any unresolved risks or blockers
4. Commit with one-line descriptive message (what + why) once work is in safe state; push only when the user asks
5. Leave the suite green, the working tree intentional (no stray edits), and the repo clean enough for next session to run `./init.sh` immediately

## Verification Commands

```bash
# Full verification (recommended)
uv run pytest
```

## Escalation

If you encounter:

- **Architecture decisions**: Consult project architecture docs if present, otherwise ask user
- **Unclear requirements**: Check product/requirements docs if present, otherwise ask user
- **Repeated test failures**: Update progress, flag for human review
- **Scope ambiguity**: Re-read `feature-list.json` for definition of done