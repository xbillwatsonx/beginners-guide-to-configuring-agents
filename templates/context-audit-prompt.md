# Context Audit Prompt

Use this prompt when your agent starts feeling confused, stale, or overloaded.

```text
Audit my agent context files.

Do not edit anything yet.

Review:
- AGENTS.md
- SOUL.md
- USER.md
- MEMORY.md
- any project-specific instruction files you can see

Tell me:
1. what each file is currently doing
2. whether any file is too long or trying to do too many jobs
3. whether any rules contradict each other
4. whether any stale priorities should be removed
5. whether private information is stored in the wrong place
6. what should stay in memory
7. what should move to a knowledge base
8. what should move to AGENTS.md, SOUL.md, or USER.md

Then propose the smallest safe cleanup plan.

Wait for my approval before editing.
```

## When to run it

Run this when:

- the agent keeps forgetting important rules
- memory feels crowded
- project context is mixed with personality or preferences
- the agent sounds confident but keeps missing obvious setup details
- you have not reviewed the files in a while

## The beginner lesson

Context files are living files.

They should get clearer over time, not bigger forever.
