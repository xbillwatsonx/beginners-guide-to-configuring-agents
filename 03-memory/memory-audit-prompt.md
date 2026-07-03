# Memory Audit Prompt

## When to use this

Use this prompt when:

- your agent says memory is full
- memory feels cluttered
- the agent keeps remembering old or irrelevant things
- you are setting up a knowledge base
- you want to clean memory before it becomes a problem

Do not wait until memory is broken. A short audit every so often keeps the agent healthier.

## Copy-paste prompt

```text
I want to audit your memory and clean it up safely.

Please review your current memory and sort each item into one of these buckets:

1. KEEP IN MEMORY
Short durable reminders that help nearly every future session.

2. MOVE TO AGENTS.md
Environment details, file paths, tool rules, project structure, command rules, safety boundaries.

3. MOVE TO USER.md OR SOUL.md
Information about me, my preferences, your role, your tone, or how you should work with me.

4. MOVE TO KNOWLEDGE BASE OR PROJECT DOCS
Longer reference material, project history, troubleshooting details, documentation, notes, examples.

5. DELETE
Outdated, temporary, duplicated, or no longer useful items.

Important rules:
- Do not delete or rewrite anything yet.
- Do not save secrets, API keys, passwords, or private tokens.
- Keep memory short.
- Prefer pointers to long material instead of copying long material into memory.
- If you are unsure where something belongs, ask me.

After sorting, show me:
1. the proposed new MEMORY.md
2. the list of items to move elsewhere
3. where each moved item should go
4. any questions you need answered before writing files
```

## Follow-up prompt after review

Use this after you approve the plan:

```text
I approve the memory cleanup plan.

Before changing anything:
1. create a timestamped backup of the current memory file
2. tell me the backup path

Then:
1. write the new compact MEMORY.md
2. move longer material into the recommended files or knowledge base locations
3. add memory pointers to those locations where helpful
4. show me a summary of what changed

Do not delete information unless it was in the approved DELETE bucket.
```

## What a good result looks like

A good memory file after cleanup might look like this:

```markdown
# MEMORY.md

- User prefers plain language, practical steps, and low-cost tools.
- Ask before using paid API providers.
- Main workspace is ~/projects.
- Long-term notes live in ~/knowledge-base. Search there before guessing about ongoing projects.
- Explain terminal commands before running them when the user is learning.
```

That is short enough to be useful.

## What a bad result looks like

A bad cleanup keeps everything:

```markdown
- User prefers plain language...
- Full project history from January...
- Copied install docs...
- Ten paragraphs about one troubleshooting session...
- Old plan that no longer applies...
- Complete list of every tool ever discussed...
```

That is not memory. That is a messy notebook.

## Safety check

Before approving any cleanup, ask the agent:

```text
Before I approve this, tell me what information could be lost if we apply your cleanup plan.
```

If the answer feels unclear, slow down. Memory cleanup should be careful, not rushed.
