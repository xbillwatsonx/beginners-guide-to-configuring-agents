# Copy-Paste Context Prompts

These prompts are meant to be copied directly into your agent.

Use them in order if you are starting fresh.

## 1. Context interview

```text
I want to configure you before we do real work.

Please interview me so we can create useful first drafts of my context files.

Ask beginner-friendly questions in this order:
1. who I am
2. what I do
3. what I want help with
4. my active projects
5. my computer and workspace
6. my communication preferences
7. my hard rules and safety boundaries
8. what you should avoid

Ask one section at a time. Do not overwhelm me with a huge questionnaire.

When we are done, propose drafts for:
- AGENTS.md
- SOUL.md
- USER.md
- MEMORY.md

Do not write files until I approve the drafts.
```

## 2. Create first drafts

```text
Using what I told you, create first drafts of my Hermes context files.

Use this split:

- AGENTS.md: computer setup, workspace paths, tools, rules, safety boundaries
- SOUL.md: your role, tone, and working principles
- USER.md: who I am, what I do, my preferences, my active projects
- MEMORY.md: only short reminders that must be loaded every session

Keep the language plain. Do not add assumptions. If something is unknown, mark it as TODO instead of guessing.

Show me the drafts first. Do not write files yet.
```

## 3. Review before writing

```text
Review these proposed context files before writing them.

Check for:
- anything too vague
- anything too temporary
- anything that belongs in a knowledge base instead of memory
- missing safety rules
- missing project or workspace details
- any secrets or sensitive information that should not be saved

Give me a short review and a corrected final draft.
```

## 4. Save approved files

```text
I approve these drafts.

Write them to the correct Hermes files:

- ~/.hermes/AGENTS.md
- ~/.hermes/SOUL.md
- ~/.hermes/memories/USER.md
- ~/.hermes/memories/MEMORY.md

Before writing, back up any existing files by copying them with a timestamp suffix.

After writing, show me:
1. which files changed
2. where the backups are
3. a short summary of what each file now contains
```

## 5. Import context from another assistant

```text
I am importing context from another AI assistant.

Read the summary below and help me place it into the right files:

- AGENTS.md for environment, rules, tools, folders, and operating instructions
- SOUL.md for your role, tone, and behavior
- USER.md for who I am and how I like to work
- MEMORY.md only for short must-remember reminders
- a separate knowledge base or project docs for longer reference material

Do not write files yet. First show me:
1. what you would put in each file
2. what you would leave out
3. what questions you need me to answer

Imported summary:

[paste summary here]
```

## 6. Turn a correction into a rule

Use this when the agent makes the same kind of mistake more than once.

```text
I just corrected you about something that may matter in future sessions.

Help me decide whether this should be saved as:
- an AGENTS.md rule
- a USER.md preference
- a SOUL.md behavior instruction
- a MEMORY.md reminder
- a project note
- or not saved at all

Correction:
[explain the correction]

Give me the exact wording you recommend, and explain briefly where it should go.
```

## 7. Check whether your context is working

```text
Review your current context files and tell me what you know about:

1. who I am
2. how I like you to communicate
3. my active projects
4. my workspace and tools
5. my hard rules
6. what you should avoid

Then tell me what is missing, unclear, or likely to cause bad guesses.

Do not change files yet.
```
