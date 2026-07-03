# Describe Yourself

## The agent cannot infer your life

Your agent may be smart, but it does not know your business, your projects, your budget, your computer, your habits, or your patience level.

If you do not describe those things, it guesses.

Sometimes the guess is fine. Often it is not.

## Start with plain facts

Do not try to sound technical. Write like you are introducing yourself to a helpful person on their first day.

Use this structure:

```text
My name is [name].
I do [work, business, hobby, or main responsibility].
I am using an AI agent because [reason].
My experience level is [beginner/intermediate/advanced in relevant areas].
I prefer [communication style].
I want help with [main goals].
I do not want [things to avoid].
```

Example:

```text
My name is Jamie.
I run a small landscaping business.
I am using an AI agent because I want help with admin work, customer follow-ups, basic website updates, and organizing notes.
I am comfortable with step-by-step instructions, but I am not a developer.
I prefer plain language and practical examples.
I want help with low-cost tools and simple automation.
I do not want paid API usage unless I approve it first.
```

That is enough to start.

## Add your working style

The agent also needs to know how to work with you.

Good things to include:

- Do you want short answers or detailed explanations?
- Do you want the agent to ask before making changes?
- Do you want it to explain commands before running them?
- Do you prefer free/local tools over paid/cloud tools?
- Are there folders it should avoid?
- Do you want beginner-level explanations?

Example:

```text
When you help me, give me the simple version first. If I need details, I will ask.

Before changing files or running commands, explain what you plan to do.

Prefer free and local tools when they are good enough. Ask before using paid APIs.

If I sound confused, slow down and explain the next step in plain language.
```

## Add your main projects

Your agent cannot help well if it does not know what matters.

List your active projects:

```markdown
## Active projects

- Microgreens business website - simple updates, customer education, order flow
- Personal learning - Python, GitHub, local AI tools
- Family photos - organize and back up safely
```

Do not list every old idea you have ever had. Start with what you actually want help with now.

## Add your hard boundaries

Boundaries are not dramatic. They are normal.

Examples:

```markdown
## Hard rules

- Never delete files without asking.
- Never print API keys, passwords, or secrets.
- Never use paid APIs without permission.
- Do not modify anything outside my workspace unless I ask.
- If you are not sure, ask instead of guessing.
```

These are the rules that keep trust alive.

## Where this information goes

Split your notes like this:

- Put your personal preferences in `USER.md`
- Put agent behavior and tone in `SOUL.md`
- Put paths, tools, and hard rules in `AGENTS.md`
- Put only the shortest must-remember reminders in `MEMORY.md`

You do not have to get this perfect. The agent can help you sort it.

## Copy-paste prompt

Use this prompt with your agent:

```text
I want to configure you properly before we do real work.

Interview me and help me create first drafts of AGENTS.md, SOUL.md, USER.md, and MEMORY.md.

Keep the questions beginner-friendly. Ask one section at a time:
1. who I am
2. what I do
3. my active projects
4. my computer and workspace
5. how I like to communicate
6. my hard rules and safety boundaries

After the interview, propose file contents for each context file. Do not write anything yet. Show me the drafts first so I can approve or correct them.
```

## What good looks like

Good context is not fancy. It is clear.

Your first draft should answer:

- Who am I?
- What am I trying to do?
- How technical am I?
- How should the agent talk to me?
- What tools and folders matter?
- What should the agent avoid?

If your files answer those questions, you are already ahead of most beginners.
