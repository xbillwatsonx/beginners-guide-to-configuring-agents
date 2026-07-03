# Sticky Note vs Filing Cabinet

## The easiest way to understand memory

Imagine your agent has two places to keep information.

One is a sticky note on the monitor.

One is a filing cabinet across the room.

The sticky note is always visible. The agent sees it immediately every time it starts. But there is not much room.

In Hermes, memory has a hard limit: **2,200 characters** for `MEMORY.md` and **1,375 characters** for `USER.md`. That is roughly 30 short facts combined — a few lines, not a few pages. When it is full, it is full.

The filing cabinet can hold thousands of pages. But the agent has to know when to go look.

That is the difference between memory and a knowledge base.

## Memory is the sticky note

Memory should hold short reminders that matter almost every time:

```markdown
- My name is Jamie.
- I prefer plain language.
- Ask before using paid APIs.
- My main workspace is /home/jamie/projects.
```

These are small, durable facts. They help the agent orient quickly.

## A knowledge base is the filing cabinet

A knowledge base should hold longer material:

- project notes
- research
- documentation
- business details
- troubleshooting history
- past decisions
- examples and templates

The agent does not need all of that in its face every session. It needs to know where to find it.

Memory can point to the filing cabinet:

```markdown
- Long-term project notes live in /home/jamie/knowledge-base. Search there before guessing.
```

That one line is better than stuffing all the notes into memory.

## What went wrong for us

One of our agents started using memory like a filing cabinet. It saved too much detail into a tiny memory file.

The result was predictable:

- memory filled up
- useful reminders were crowded out
- the agent could not save new durable facts cleanly
- setup felt more confusing than it needed to

The fix was not complicated. We moved long reference material into a knowledge base and left memory as a compact pointer.

## The decision test

Before saving something to memory, ask:

```text
Will this help almost every future session?
```

If yes, it may belong in memory.

If no, ask:

```text
Would this be better as a project note, knowledge base entry, or normal file?
```

Most information belongs outside memory.

## Good memory examples

```markdown
- User prefers concise answers with practical next steps.
- Never use paid API providers without explicit permission.
- Main project workspace is ~/projects.
- Search ~/knowledge-base before answering questions about long-term projects.
- User is a beginner with terminal commands; explain commands before running them.
```

## Bad memory examples

```markdown
- Full notes from a two-hour troubleshooting session.
- A copied install guide.
- A complete business plan.
- A long list of every idea the user mentioned once.
- A whole conversation transcript.
```

Those may be useful, but they are not sticky-note material.

## The goal

A good memory file should be boring, short, and useful.

If you read it and think, "Yes, this is exactly what the agent needs to remember every time," you are on the right track.
