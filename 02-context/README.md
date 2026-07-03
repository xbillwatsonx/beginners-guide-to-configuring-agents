# 02 - Context

## What context means

Context is the background your agent needs before it can be useful.

It is the difference between this:

```text
Help me with my project.
```

And this:

```text
I run a small organic microgreens business. I am learning automation so I can reduce repetitive admin work. I prefer plain language, practical steps, and low-cost tools. My main workspace is ~/projects, and I want you to ask before using paid APIs.
```

The second prompt gives the agent something to work with. The agent can make better decisions because it knows who you are, what matters, and what boundaries to respect.

## Why context files matter

A conversation helps for today. A context file helps every session.

If you only tell the agent your preferences in chat, it may forget them later. If you write them into the right files, the agent can load them again when it starts.

In Hermes, the main context files are:

- `AGENTS.md` - the operating rules and environment notes
- `SOUL.md` - the agent's role, voice, and working principles
- `USER.md` - who you are and how you like to work
- `MEMORY.md` - compact long-term reminders

You do not need perfect files on day one. You need a useful first draft that you can improve over time.

## What you will build in this section

By the end of this section, you should have:

- a simple `AGENTS.md` that tells the agent where it is and what rules to follow
- a simple `SOUL.md` that tells the agent how to act
- a simple `USER.md` that tells the agent who it is helping
- a repeatable prompt for importing context from old ChatGPT, Claude Code, or Codex conversations
- a better first message for new agent sessions

## The beginner mistake

The beginner mistake is trying to make the agent useful before introducing yourself.

We made this mistake too. Agents guessed at our setup, assumed tools existed that did not exist, suggested paid providers when we wanted local models, and missed obvious preferences because we had not written them down yet.

That was not a model failure. It was an onboarding failure.

## The simple rule

If you find yourself correcting the agent more than once, write the correction down.

Good places to write corrections:

- `AGENTS.md` for rules, paths, tools, and environment facts
- `USER.md` for your preferences
- `SOUL.md` for how the agent should sound and behave
- `MEMORY.md` for short reminders the agent should always keep in mind

## Files in this section

- [Agent Instructions](agent-instructions.md) - what `AGENTS.md`, `SOUL.md`, and `USER.md` do
- [Describe Yourself](describe-yourself.md) - how to tell the agent who you are
- [Importing Context](importing-context.md) - how to bring useful history from ChatGPT, Claude Code, Codex, or another agent
- [Copy-Paste Prompts](copy-paste-prompts.md) - ready-to-use prompts for building your first context files

## Where to go next

Start with [Agent Instructions](agent-instructions.md). Then use [Describe Yourself](describe-yourself.md) to draft your own context.
