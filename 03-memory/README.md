# 03 - Memory

## Memory is smaller than beginners expect

Agent memory is not a giant brain.

In Hermes, memory is a compact file that gets loaded so the agent can carry important reminders between sessions. That makes it powerful, but it also makes it easy to misuse.

If you stuff everything into memory, it fills up. Then the agent either stops saving useful things or starts carrying clutter that makes it worse at helping you.

We learned this the hard way.

## The simple metaphor

Use this:

- **Memory is a sticky note.**
- **A knowledge base is a filing cabinet.**

The sticky note is always visible. It should be short.

The filing cabinet can hold lots of information, but the agent only opens it when needed.

## What belongs in memory

Good memory items are short reminders:

```markdown
- Jamie prefers plain language and step-by-step instructions.
- Main workspace is /home/jamie/projects.
- Never use paid API providers without permission.
- Project docs live in /home/jamie/notes.
```

These reminders help every session.

## What does not belong in memory

Bad memory items are long reference notes:

- full project histories
- copied documentation
- long troubleshooting logs
- whole conversations
- detailed business plans
- old decisions that no longer matter
- information the agent can look up in a project file

Those belong in project docs or a knowledge base.

## What you will build in this section

By the end of this section, you should be able to:

- explain the difference between memory and a knowledge base
- audit your memory for clutter
- decide what to keep, move, or delete
- write a memory cleanup prompt
- avoid filling memory with things that belong somewhere else
- understand how memory persists between sessions and what happens when a chat ends

## Will closing this chat erase what we discussed?

No, but only if the agent saved what you told it to its memory and context files. Here is the lifecycle:

1. **During a chat**: the agent reads its memory file when it starts. It can also write to it if you ask it to save something.
2. **When you close the chat**: the conversation itself may or may not be saved by your harness. But the memory file on disk is what the next session will load.
3. **When a new session starts**: the agent loads its memory file and context files again. It does not automatically remember the full previous conversation.
4. **How to confirm something was saved**: ask the agent to show you what it wrote to memory. Check the actual file on disk (for Hermes, `~/.hermes/memories/MEMORY.md`). If it is there, it will persist. If it is only in the chat, it will not.
5. **What must be saved elsewhere**: long reference material belongs in a knowledge base or project docs, not in memory. Conversations that contain important decisions should be summarized and saved to a durable file.

Do not assume the agent automatically saves everything you discuss. If it matters, ask the agent to save it and then verify it was written.

## Files in this section

- [Sticky Note vs Filing Cabinet](sticky-note-vs-filing-cabinet.md)
- [Memory vs Knowledge Base](memory-vs-knowledge-base.md)
- [Memory Audit Prompt](memory-audit-prompt.md)
- [Hannah Memory Teaching Example](hannah-memory-teaching-example.md) - short version of the approved real story

## Where to go next

Start with [Sticky Note vs Filing Cabinet](sticky-note-vs-filing-cabinet.md).
