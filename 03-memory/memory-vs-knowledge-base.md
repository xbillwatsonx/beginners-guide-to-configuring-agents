# Memory vs Knowledge Base

## The difference

Memory and knowledge base are both ways to help your agent remember. They do different jobs.

| Tool | Best for | Size | Loaded every session? |
|------|----------|------|-----------------------|
| Memory | short durable reminders | 2,200 chars (MEMORY.md) + 1,375 chars (USER.md) | yes |
| Knowledge base | longer reference material | unlimited | no, searched when needed |

If you mix them up, your agent gets harder to manage.

## Use memory for always-loaded reminders

Memory is for facts the agent should carry into nearly every conversation.

Examples:

```markdown
- User prefers plain language and practical examples.
- Ask before deleting files or running destructive commands.
- Prefer local/free tools before paid cloud tools.
- Project docs live in ~/knowledge-base.
```

These reminders are short. They affect behavior often.

## Use a knowledge base for reference

A knowledge base is for information the agent can look up when needed.

Examples:

- project histories
- customer notes
- research files
- meeting notes
- full troubleshooting records
- saved articles
- technical documentation
- runbooks

This material is useful, but it does not need to be loaded every time you say hello.

## The pointer pattern

The best setup usually combines both.

Memory says where to look:

```markdown
- Long-term project notes live in ~/knowledge-base. Search there before relying on memory.
```

The knowledge base holds the details.

This keeps memory small while still giving the agent access to deeper context.

## What belongs in AGENTS.md instead?

Some beginners put environment rules into memory. A few short reminders are fine, but most environment setup belongs in `AGENTS.md`.

Use `AGENTS.md` for:

- file paths
- installed tools
- project structure
- command rules
- safety rules
- service names
- repo conventions

Use memory only for the short reminders the agent must carry into every session.

## What belongs in USER.md instead?

Personal preferences usually belong in `USER.md`.

Use `USER.md` for:

- your name
- your role
- your communication preferences
- your experience level
- your current goals

Use memory for the shortest version:

```markdown
- User prefers plain language, concise answers, and low-cost tools.
```

## What belongs in SOUL.md instead?

Agent behavior belongs in `SOUL.md`.

Use `SOUL.md` for:

- role
- tone
- working style
- values
- how the agent should explain things

Memory can hold a pointer if it is critical:

```markdown
- Follow SOUL.md voice: plain, practical, friendly, no hype.
```

## A practical cleanup rule

When memory gets too long, do not delete blindly.

Sort each item into one of five buckets:

1. Keep in memory
2. Move to `AGENTS.md`
3. Move to `USER.md` or `SOUL.md`
4. Move to knowledge base or project docs
5. Delete because it is outdated or temporary

Then write a short memory pointer to the place where long material moved.

## Example cleanup

Before:

```markdown
- User is building a microgreens ordering website. They use a VPS at [details], nginx config is [long details], deployment steps are [long details], customer workflow is [long details]...
```

After:

```markdown
- Microgreens website docs live in ~/knowledge-base/microgreens. Read them before making website changes.
```

The after version is easier for the agent to use.

## The main rule

Memory should help the agent start well.

The knowledge base should help the agent dig deeper.
