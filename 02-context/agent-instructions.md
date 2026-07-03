# Agent Instructions

## The three files beginners should understand first

Most agent setup becomes less mysterious once you understand these three files:

- `AGENTS.md`
- `SOUL.md`
- `USER.md`

Different agent harnesses use different names, but the pattern is common. One file explains the workspace. One file explains the agent's role. One file explains the human.

Hermes uses these files directly, so we will use Hermes names throughout this guide.

## AGENTS.md: where am I and what are the rules?

`AGENTS.md` is the agent's operating map.

Put practical facts here:

- what this computer is
- where important folders live
- what tools are installed
- what the agent is allowed to do
- what the agent should never do without asking
- how projects are organized
- what commands are safe to run

Example:

```markdown
# AGENTS.md

## Environment

- OS: Windows with WSL Ubuntu
- Main workspace: /home/me/projects
- Hermes home: ~/.hermes

## Rules

- Never use paid API providers without my permission.
- Ask before deleting files.
- Prefer local/free tools before paid cloud tools.
- If you are unsure, ask instead of guessing.

## Project locations

- Personal projects: /home/me/projects
- Notes and knowledge base: /home/me/notes
```

This file prevents the agent from guessing about your machine.

## SOUL.md: who are you supposed to be?

`SOUL.md` tells the agent how to show up.

This is not magic. It will not make the agent perfect. But it does give every session a steady starting point.

Put working style here:

- the agent's role
- the tone you want
- the values it should optimize for
- how cautious or direct it should be
- how it should explain things

Example:

```markdown
# SOUL.md

You are a practical AI helper for a beginner learning local automation.

Use plain language. Be direct but kind. Explain unfamiliar terms the first time you use them. Prefer simple, low-cost solutions. Do not show off. Help me understand what you are doing.
```

This file shapes the agent's behavior.

## USER.md: who is the agent helping?

`USER.md` is about you.

Put personal working preferences here:

- your name
- what you do
- your experience level
- how you like explanations
- what you are trying to build
- what tools you already use
- what you dislike

Example:

```markdown
# USER.md

My name is Jamie. I run a small landscaping business and I am learning automation to reduce admin work.

I am comfortable following step-by-step instructions, but I am not a developer. I prefer practical examples over theory. I like short summaries first, then details if needed.

I care about low-cost tools, privacy, and not breaking my working setup.
```

This file helps the agent stop giving generic answers.

## MEMORY.md: not the same thing

`MEMORY.md` is different. It should not hold everything.

Think of memory as a small sticky note the agent always carries. It is good for compact reminders:

```markdown
- Jamie prefers plain language and low-cost tools.
- Main workspace is /home/jamie/projects.
- Never use paid API providers without permission.
```

If you put full documents, long explanations, or whole project histories in memory, it will fill up and become hard to use. We cover this in [03 - Memory](../03-memory).

## What belongs where?

Use this simple rule:

| If the note is about... | Put it in... |
|-------------------------|--------------|
| the computer, tools, paths, rules | `AGENTS.md` |
| the agent's role and tone | `SOUL.md` |
| the human's preferences | `USER.md` |
| short reminders that must always be loaded | `MEMORY.md` |
| long reference material | a knowledge base or normal project docs |

## A real example from our setup

One of our agents suggested using paid routing when we wanted local models. The fix was not a smarter model. The fix was a written rule:

```markdown
Never use paid API providers without explicit permission.
```

Once that rule lived in the right context files, future sessions had a clear boundary.

## Your first task

Open your Hermes folder and find the files:

```bash
ls ~/.hermes
ls ~/.hermes/memories
```

You are looking for:

- `~/.hermes/AGENTS.md`
- `~/.hermes/SOUL.md`
- `~/.hermes/memories/USER.md`
- `~/.hermes/memories/MEMORY.md`

If one of them is missing, create it as a plain text Markdown file.

Then go to [Describe Yourself](describe-yourself.md).
