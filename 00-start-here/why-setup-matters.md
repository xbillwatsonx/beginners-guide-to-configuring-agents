# Why Setup Matters

## The amnesia problem

Here's the single most important thing to understand about your new agent:

**It doesn't know you.**

When you install a local AI agent, it starts fresh. No memory of your name, your projects, your preferences, your computer setup, or what you're trying to accomplish. Every time it starts a new session, it's back to zero — a smart person with complete amnesia.

This isn't a bug. It's not a limitation of the software. It's just how local agents work. The agent is a capable engine, but it has no steering wheel until you give it one.

## What "configuration" actually means

When we say "configure your agent," we don't mean changing settings in a config file (though there's some of that). We mean:

1. **Telling the agent who you are** — your name, your role, what you do, how you like to work
2. **Telling the agent where it is** — what computer it's running on, what tools are available, where your files live
3. **Giving the agent a knowledge base** — a place to store and find information that's too big for its memory but too important to forget
4. **Setting up maintenance** — scheduled checks that keep the agent healthy over time
5. **Teaching the agent how you work** — your conventions, your preferences, the things you'd have to repeat every session if they weren't written down

Think of it like hiring a new assistant. On day one, they're capable but clueless about *your* world. You have to show them around — where the files are, how you like things done, what matters to you. After a few weeks of orientation, they're productive. Same thing here, except the "orientation" is done through files and prompts instead of conversations.

## What happens if you skip setup

You can skip all of this. The agent will still run. But here's what you'll get:

- **Vague answers to vague questions.** You ask "help me with my project" and the agent has no idea which project, what stack, or what you've already tried.
- **Repeated corrections.** You tell it "I prefer plain language" in session one. Session two, it's forgotten. You tell it again. Session three, forgotten again.
- **A full memory.** The agent stuffs everything into its tiny memory file until it hits the limit, then complains it can't remember anything else.
- **Broken things.** The agent tries to update itself and crashes because nobody told it to research before acting. (This happened to us. We have a whole story about it.)

The difference between an agent that feels useless and one that feels like a real partner isn't the AI model. It's the configuration.

## What happens if you do the setup

- The agent knows your name, your projects, and your preferences from the first message of every session
- It can find information in your knowledge base instead of guessing
- It knows your hard rules (don't use paid APIs without permission, don't touch certain folders)
- It has scheduled maintenance that keeps it from degrading over time
- When something breaks, you have a buddy system to fix it — another agent that can help diagnose and repair

## The time investment

This isn't a weekend project. Expect to spend real time on it — not all at once, but over the first few weeks of working with your agent. Here's a rough picture:

| What | Time | When |
|------|------|------|
| Install + first conversation | 30 minutes | Day 1 |
| Write your context files (AGENTS.md, SOUL.md) | 1-2 hours | Day 1-2 |
| Set up memory + knowledge base | 1-2 hours | First week |
| First round of corrections and tuning | Ongoing | First 2 weeks |
| Set up scheduled maintenance | 30 minutes | End of first week |
| Buddy system setup | 30 minutes | When you need it (or preemptively) |

The payoff: after the first couple of weeks, you stop configuring and start working. The agent just gets it. And when you install a *second* agent later, you can use the first one's context to configure the new one in a fraction of the time. (We do this. It works great.)

## Where to go next

- Read [What to Expect](what-to-expect.md) for a realistic picture of the journey
- Read [Addressing the Fear](addressing-the-fear.md) if you're nervous about letting AI touch your computer
- Then head to [01 - Install](../01-install) when you're ready to start