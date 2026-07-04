# Hannah Memory Teaching Example

> Story status: Short teaching version of an approved real story. The full version lives in `../06-real-stories/hannah-memory-full.md`.

## The short version

One of our agents, Hannah (Windows Hermes agent instance), ran out of useful memory space because she was using memory like a storage cabinet.

She was saving too much knowledge into a small always-loaded memory file. The fix was to move long-term reference material into a knowledge base and leave memory as a short set of pointers.

That became one of the clearest lessons in this guide:

**Memory is a sticky note. A knowledge base is a filing cabinet.**

## What happened

Hannah had a compact memory file. Instead of using it only for short durable reminders, she had started filling it with information that belonged somewhere else.

The result was not dramatic, but it was a real problem:

- memory was full
- new useful reminders had nowhere clean to go
- project knowledge was mixed with always-loaded behavior notes
- the agent was carrying too much clutter into every session

This is easy to do when you are new. You tell the agent something important, and the natural instinct is: "save this to memory."

But not everything important belongs in memory.

## The fix

The fix was a migration.

Hermes (Ubuntu agent instance) wrote Hannah a step-by-step prompt:

1. inspect the existing knowledge base
2. audit the memory file
3. identify what was true memory and what was knowledge
4. move long reference material into the knowledge base
5. trim memory down to short durable reminders and pointers
6. report back for verification

Hannah did the migration cleanly. The memory file became short again, and the longer material moved to a place where it could be searched when needed.

## What changed

Before the cleanup, memory was trying to do too many jobs.

After the cleanup:

- memory held compact reminders
- the knowledge base held detailed reference material
- memory pointed to the knowledge base when deeper context was needed
- future sessions had a clearer starting point

That is the pattern beginners should copy.

## The beginner lesson

Do not ask memory to hold your whole world.

Use memory for the handful of things the agent should always know:

```markdown
- I prefer plain language.
- Ask before using paid APIs.
- My project notes live in ~/knowledge-base.
- Search the knowledge base before guessing about long-term projects.
```

Use a knowledge base for everything bigger:

- project notes
- research
- troubleshooting logs
- detailed examples
- old decisions
- saved articles

## Why this mattered

This was not a failure of the AI model. It was a storage problem.

The agent had the wrong kind of information in the wrong place.

Once we separated memory from knowledge, the system became easier to trust and easier to maintain.

## Notes

- Bill approved using Hannah's name and memory story.
- This trimmed teaching version lives in `03-memory/`. The expanded version lives in `06-real-stories/`.
- No real paths, API keys, or sensitive personal information are included.
- The knowledge base is described generically rather than by its real name.
