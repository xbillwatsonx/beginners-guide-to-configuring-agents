# Hannah Memory Teaching Example

> This is a public-safe teaching version of the full story in `../06-real-stories/hannah-memory-full.md`.

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

### Before: what Hannah's memory looked like

```markdown
# MEMORY.md (before, ~2,100 chars, nearly full)

- User prefers plain language, step-by-step help, and short answers.
- Main workspace is /home/hannah/projects.
- Never use paid API providers without permission.
- The customer intake process has 7 steps: receive request, log it, confirm scope, assign owner, set deadline, notify team, archive. Full details in the customer service playbook.
- The garden app uses React frontend, Flask backend, SQLite database, and runs on port 5000. Deploy with `gunicorn app:app`.
- Last week we fixed a Stripe webhook bug where the event type was mismatched. The fix was changing `checkout.session.completed` to `checkout.session.async_payment_succeeded` in the webhook handler.
- Jamie's birthday is March 15.
- The backup script runs nightly at 2 AM and copies to the external drive.
```

### After: what Hannah's memory looked like

```markdown
# MEMORY.md (after, ~400 chars, plenty of room)

- User prefers plain language, step-by-step help, and short answers.
- Main workspace is /home/hannah/projects.
- Never use paid API providers without permission.
- Project docs and reference material live in ~/knowledge-base. Search there before guessing.
- Backup script runs nightly at 2 AM.
```

The customer intake process, garden app stack details, and Stripe bug fix all moved to the knowledge base where they could be searched when needed instead of loaded every session.

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
