# Working rules (copy into your CLAUDE.md)

Short rules that keep an agent careful, lean and on task. Written in our own
words, after Andrej Karpathy's notes on common LLM coding mistakes, as
collected in https://github.com/multica-ai/andrej-karpathy-skills.

Bias toward caution over speed; for trivial tasks use judgment.

1. **Think before coding.** State assumptions. If a request can be read more
   than one way, say so instead of picking silently. If a simpler way exists,
   say so. If something is unclear, stop and ask.
2. **Simplicity first.** The least code that solves the problem. No features,
   abstractions, settings or error handling nobody asked for. If 200 lines
   could be 50, rewrite it.
3. **Surgical changes.** Touch only what the request needs. Don't reformat or
   refactor nearby code; match the existing style. Mention unrelated dead code
   instead of deleting it. Remove only what your own change made unused.
4. **Goal-driven.** Turn the task into a check that proves it works (a test,
   or running it in the browser or app) and keep going until it passes. For
   multi-step work, write a short plan with a check for each step.

## Keep this file small
Put dated status notes and history in `docs/notes/<topic>.md`, not here.
The `slim-claude-md` skill in this kit does the move for you.
