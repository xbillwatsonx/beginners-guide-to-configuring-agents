# Long-Term Agent Health

## Agents drift when context drifts

Your agent does not become unreliable all at once.

It usually drifts slowly:

- a project path changes
- a rule gets outdated
- memory fills with old notes
- a provider gets added
- a tool stops working
- a correction happens twice but never gets written down

After enough drift, the agent feels confused again.

Long-term health is about catching that early.

## The three habits

You only need three habits:

1. Save repeated corrections
2. Move long knowledge out of memory
3. Review rules on a schedule

## 1. Save repeated corrections

If you correct the agent once, it may be a one-off.

If you correct it twice, write it down.

Prompt:

```text
I corrected you about this more than once:

[describe correction]

Help me turn this into a durable instruction.

Tell me whether it belongs in:
- AGENTS.md
- SOUL.md
- USER.md
- MEMORY.md
- project docs
- a reusable prompt

Give me the exact wording. Do not write files until I approve.
```

This is how your agent gets better without needing a better model.

## 2. Move long knowledge out of memory

Memory is not your filing cabinet.

When memory fills up, do not just delete things. Move them.

Prompt:

```text
Review memory for items that belong in a knowledge base or project docs.

For each item, tell me:
1. why it does or does not belong in memory
2. where it should move
3. what short pointer should remain in memory

Do not change files yet.
```

The short pointer is the key.

Example:

```markdown
- Long-term project notes live in ~/knowledge-base. Search there before guessing.
```

## 3. Review rules on a schedule

Rules can go stale.

Examples:

- "Current project is X" after X is finished
- "Use this model" after you changed providers
- "Workspace is here" after you moved folders
- "Ask before doing Y" after you now trust the agent with Y

Once a month, ask:

```text
Review my long-term rules and context.

Find:
1. stale rules
2. missing rules from recent corrections
3. duplicated guidance
4. rules that are too vague
5. rules that conflict with each other

Do not edit yet. Show me the proposed cleanup.
```

## Warning signs

Your agent may need maintenance if:

- it asks the same setup questions repeatedly
- it suggests tools you do not use
- it forgets your budget or provider rules
- it gives advice for the wrong operating system
- it cannot find your project files
- it says memory is full
- it repeats mistakes you already corrected

These are not reasons to quit. They are reasons to tune the setup.

## Keep a repair trail

When something breaks, save a short note:

```markdown
## 2026-07-03 - Provider routing confusion

What happened:
- Agent could have routed work to a paid provider automatically.

Fix:
- Locked provider routing to local/free model by default.
- Added rule: never use paid APIs without permission.

Follow-up:
- Check provider config weekly for a month.
```

This kind of note helps future-you and future-agents.

## The long-term goal

The goal is not an agent that never makes mistakes.

The goal is an agent that has a repair path:

- notice the mistake
- write down the lesson
- update the right file
- verify the fix
- move on

That is sustainable.
