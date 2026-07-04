# Hannah Filled Her Memory

## People and agents in this story

- Hannah - Hermes agent instance running on a separate Windows system
- Hermes - Ubuntu agent instance

## The short version

Hannah's memory filled up because she was using it like a storage cabinet.

She saved too much project knowledge into a small always-loaded memory file.

The fix was to move long reference material into a knowledge base and leave memory as a short list of durable reminders and pointers.

That became one of the clearest lessons in this guide:

```text
Memory is a sticky note.
A knowledge base is a filing cabinet.
```

## What happened

Hannah had a compact memory file.

That memory was supposed to hold the few things she should carry into most conversations:

- who she is
- who she helps
- important preferences
- durable rules
- where to look for deeper context

Instead, she started filling it with knowledge.

That is an easy mistake to make.

When something matters, your first instinct is to say:

```text
Remember this.
```

But agents usually have different places for different kinds of remembering.

Memory is small and always loaded. A knowledge base is larger and searched when needed.

Hannah was putting filing-cabinet material on the sticky note.

## Why it mattered

When memory fills up, the agent gets harder to maintain.

You can run into problems like:

- important reminders get crowded out
- old details stay loaded every session
- project knowledge mixes with behavior rules
- the agent carries clutter into unrelated work
- you cannot easily tell what should stay or move

This can make the agent feel worse even though it has more information.

More memory is not always better.

Better placement is better.

## The fix

Hermes (Ubuntu agent instance) wrote a cleanup prompt for Hannah (Windows Hermes agent instance).

The prompt asked Hannah to:

1. inspect the existing knowledge base
2. audit her memory file
3. decide what was true memory and what was reference knowledge
4. move long reference material into the knowledge base
5. trim memory down to short durable reminders and pointers
6. report back for verification

Hannah completed the migration cleanly.

The result was a much healthier setup:

- memory became short again
- long reference material moved to the knowledge base
- memory pointed to the knowledge base instead of trying to contain it
- another agent verified the result from the outside

## The beginner lesson

Do not ask memory to hold your whole world.

Use memory for short reminders the agent should almost always know:

```markdown
- Use plain language.
- Ask before using paid APIs.
- Project notes live in my knowledge base.
- Search project notes before guessing about older work.
```

Use a knowledge base for bigger material:

- project histories
- research
- troubleshooting notes
- saved articles
- meeting notes
- full examples
- older decisions

## Copy-paste memory audit prompt

Use this when an agent's memory starts getting crowded:

```text
Audit your memory file.

Do not delete anything yet.

Sort each memory item into one of these buckets:
1. keep in memory
2. move to AGENTS.md
3. move to USER.md or SOUL.md
4. move to the knowledge base
5. delete because it is outdated

For each item, explain why.

Then propose a trimmed memory file that keeps only short durable reminders and pointers.
Wait for my approval before editing.
```

## What this story is really about

This was not a model problem.

It was an information architecture problem.

The information mattered, but it lived in the wrong place.

Once memory and knowledge had separate jobs, Hannah became easier to manage.
