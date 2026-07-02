# Your First Conversation

## The most common beginner mistake

Here's what most people do after installing an agent:

```
You: "Help me build a website"
Agent: "Sure! What kind of website? What framework? What content? Where should I put the files?"
You: "Um... just a basic website"
Agent: "Okay, I'll create a basic HTML site..."
[The result is generic, useless, and frustrating]
```

The agent isn't dumb. You just gave it nothing to work with. Imagine hiring a new employee and saying "build me a website" on their first day, with no other context. They'd produce something generic too.

Here's what a good first conversation looks like instead:

```
You: "I just set you up. Before we do any real work, I want to tell you about myself and my setup. Is that okay?"
Agent: "Yes, that's a great idea. I'll save what you tell me."
You: "My name is Bill. I run a small organic microgreens business. I'm learning to code as a hobby. I prefer plain language over technical jargon. I'm on Windows with WSL Ubuntu."
Agent: "Got it. Should I save this to my memory?"
You: "Yes, and let's also write it into your context files so you don't forget it between sessions."
```

See the difference? You're not asking the agent to do work yet. You're **onboarding** it.

## What to say on day one

Your first conversation should be about **orientation**, not tasks. Here's a framework:

### 1. Tell it who you are

```
My name is [name].
I do [what you do — your job, your business, your main projects].
I'm [your experience level with tech — be honest].
I prefer [how you like to communicate — plain language, detailed explanations, brief answers].
```

### 2. Tell it where it is

```
You're running on [your OS — Linux, macOS, Windows WSL, native Windows].
My main workspace is [path to your working folder].
I also work on [other locations — other drives, cloud folders, etc.].
```

### 3. Set your hard rules

```
Before we start, here are my hard rules:
- Never use paid APIs without my permission
- Explain what you're going to do before doing anything that changes files or runs commands
- If you're not sure about something, ask — don't guess
- Don't touch [folders that are off-limits]
```

### 4. Ask it to save everything

```
Take what I've told you and save it to your memory and context files. 
Specifically, write it into AGENTS.md and USER.md so it persists across sessions.
```

### 5. Ask it to confirm

```
Show me what you saved so I can verify it's correct.
```

This last step is important. The agent will show you what it wrote, and you can correct anything that's wrong. This sets the pattern for your whole relationship: **it does, you verify, you correct.**

## What NOT to do on day one

- **Don't ask it to fix something urgent.** If you have a real problem to solve, wait until you've done the orientation above. An unconfigured agent fixing something urgent is how things get broken.
- **Don't ask it to update or modify itself.** This is the most dangerous thing a fresh agent can do. It doesn't know your setup well enough to safely modify its own config. Wait until you've worked together for a while.
- **Don't give it your API keys in a conversation.** Put keys in `.env` files, not in chat. Conversations can get logged, summarized, or committed to git. `.env` files are private.
- **Don't expect it to remember this conversation tomorrow.** Unless the agent saved what you told it to its memory and context files, it will forget everything. That's why step 4 (ask it to save) is critical.

## After the first conversation

Once you've done the orientation, you're ready to start real work. But keep it small at first:

1. **Ask it a question** about something you know the answer to. See if it answers well.
2. **Ask it to read a file** and summarize it. See if it reads the right file and gives you an accurate summary.
3. **Ask it to write a small file.** A todo list, a summary of a project, anything low-stakes. Check the file. Is it what you wanted?
4. **Correct it.** If it got something wrong — and it will — correct it and ask it to save the correction. This is how it learns.

Each small interaction teaches you how the agent thinks and teaches the agent how you work. By the end of the first day, you'll have a feel for each other.

## The golden rule

**Be specific. Be clear. Be honest about what you know and don't know.**

The agent can only work with what you give it. Vague prompts produce vague results. Specific prompts produce specific results. This is true on day one and it's true on day three hundred.

When in doubt, give more context, not less. It's always better to tell the agent something it already knows than to assume it knows something it doesn't.

## Where to go next

- [02 - Context](../02-context) — How to write context files that make your agent actually useful
- [03 - Memory](../03-memory) — How agent memory works and why it fills up