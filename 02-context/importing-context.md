# Importing Context From Other Chats

## Why this matters

You may already have useful history in ChatGPT, Claude Code, Codex, or another agent.

Do not throw that away.

Old conversations often contain:

- your preferences
- project names
- decisions you already made
- explanations that worked for you
- mistakes you corrected
- rules you want future agents to follow

The trick is to import the useful parts without dumping a giant chat log into memory.

## Do not paste everything

A long transcript is not good context by itself.

If you paste weeks of chat history into an agent, it may miss the important parts. Worse, it may save too much into memory and make the next problem harder.

Instead, ask the old assistant to summarize the durable parts.

Durable means: useful beyond the current conversation.

## What to extract

Look for these categories:

- **Identity:** who you are, what you do, what you care about
- **Preferences:** how you like answers, tools, cost, tone, and pace
- **Projects:** what you are actively working on
- **Decisions:** choices already made
- **Rules:** things the agent should always follow
- **Environment:** operating system, file paths, tools, accounts, local setup
- **Lessons learned:** mistakes that should not repeat

Do not import:

- API keys
- passwords
- private tokens
- whole logs
- temporary arguments
- outdated project details
- sensitive personal information you do not need the agent to keep

## Prompt for ChatGPT, Claude Code, or Codex

Paste this into the old tool:

```text
I am moving useful context from this conversation into a local AI agent setup.

Please extract only durable information that would help a future agent assist me.

Organize the output into these sections:

1. Who I am
2. My communication preferences
3. Active projects
4. Important decisions already made
5. Tools, paths, and environment details
6. Rules the future agent should follow
7. Lessons learned from mistakes or corrections
8. Things that should NOT be saved

Keep it concise. Do not include secrets, API keys, passwords, tokens, or private data unless I explicitly included a safe placeholder.

After the summary, suggest which items belong in AGENTS.md, SOUL.md, USER.md, MEMORY.md, or a separate knowledge base.
```

## Prompt for your new Hermes agent

After you have the summary, paste it into Hermes with this prompt:

```text
I am importing context from another AI assistant.

Read the summary below and help me place it into the right files:

- AGENTS.md for environment, rules, tools, folders, and operating instructions
- SOUL.md for your role, tone, and behavior
- USER.md for who I am and how I like to work
- MEMORY.md only for short must-remember reminders
- a separate knowledge base or project docs for longer reference material

Do not write files yet. First, show me:
1. what you would put in each file
2. what you would leave out
3. what questions you need me to answer

Here is the imported summary:

[paste summary here]
```

## Real example: the provider rule

In our setup, one agent had access to a paid provider and could have routed tasks there automatically. The durable lesson was not the whole troubleshooting conversation.

The durable lesson was this rule:

```markdown
Never use paid API providers without explicit permission.
```

That belongs in `AGENTS.md` and possibly `MEMORY.md` as a short reminder.

The long explanation of how we discovered it belongs in a story or runbook, not memory.

## Real example: the memory problem

One of our agents filled its memory with information that should have lived in a knowledge base.

The durable lesson was:

```markdown
Memory is for compact always-loaded reminders. Long reference material belongs in the knowledge base.
```

That sentence is memory material.

The full migration story belongs in a guide, not in `MEMORY.md`.

## Final check before saving

Before letting the agent write context files, ask:

```text
Review this proposed context import.

Flag anything that is:
- too temporary for long-term memory
- too sensitive to save
- better suited for a knowledge base
- unclear or likely to confuse future sessions

Then give me a final concise version to approve.
```

This extra review step is worth it. It prevents memory clutter before it starts.
