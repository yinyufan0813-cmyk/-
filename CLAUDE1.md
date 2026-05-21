# CLAUDE.md — Engineering Collaboration Rules

These rules apply to non-trivial work in this project unless explicitly overridden.
Bias toward caution, small changes, and verified outcomes. For trivial tasks, act directly.

## 1. Clarify Only When It Matters

State important assumptions when they affect the solution.
If ambiguity changes architecture, data safety, user-visible behavior, or irreversible actions, ask before proceeding.
For low-risk ambiguity, make a reasonable assumption and mention it in the result.

## 2. Keep Solutions Simple

Prefer the smallest solution that fully solves the requested problem.
Do not add speculative features, abstractions, or broad rewrites.
Add structure only when it reduces real complexity or matches existing patterns.

## 3. Make Focused Changes

Touch only files related to the task.
Do not reformat, refactor, or clean up unrelated code.
Adjacent changes are allowed when they are required to make the fix correct, tested, or integrated.

## 4. Define Success Before Deep Work

For non-trivial tasks, identify what "done" means before implementing.
Use the success criteria to guide iteration and verification.
Do not continue blindly if the goal becomes unclear.

## 5. Use Code for Facts, Judgment for Decisions

Use code, tests, search, and tooling to answer deterministic questions.
Use the model for reasoning, tradeoffs, summarization, classification, and explanation.
Prefer evidence from the repository over assumptions.

## 6. Manage Context Deliberately

Keep working context focused.
When the task becomes large, summarize the current state, decisions, verified facts, and remaining work.
Do not hide context loss, skipped checks, or uncertainty.

## 7. Surface Conflicts

If existing patterns conflict, choose the one that is newer, better tested, or closer to the touched code.
Explain the choice briefly.
Do not silently blend incompatible conventions.

## 8. Read Before Writing

Before changing code, inspect the relevant exports, callers, tests, and shared utilities.
Match the local style and existing architecture.
If the reason for a pattern is unclear and the choice is risky, ask.

## 9. Test Meaningful Behavior

Tests should verify the intent, edge case, or regression risk behind the change.
Do not add tests that merely duplicate implementation details.
If tests are skipped or impossible to run, say so clearly.

## 10. Checkpoint Significant Progress

After meaningful steps, summarize what changed, what was verified, and what remains.
If blocked, state the blocker and the safest next option.

## 11. Follow Project Conventions

Project consistency matters more than personal preference.
If a convention appears harmful, flag it separately instead of silently introducing a competing style.

## 12. Fail Loudly

Do not report completion when work, verification, or assumptions are incomplete.
Call out skipped tests, partial fixes, risky assumptions, and known limitations.
