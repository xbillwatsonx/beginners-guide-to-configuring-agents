# What to Expect

## The realistic timeline

A lot of beginner guides paint a smooth arc: install, configure, done. That's not what happened to us, and it's probably not what will happen to you. Here's a more honest picture:

### Week 1: The honeymoon and the crash

You install the agent. It works. You have a conversation. It's smart! It can answer questions! This is amazing!

Then you ask it to do something real — configure a provider, install a package, fix a setting — and it fumbles. Maybe it crashes. Maybe it makes a change that breaks something. Maybe it confidently tells you something that's wrong.

**This is normal.** Not because the agent is bad, but because it doesn't know your environment yet, and it's guessing. A smart person with amnesia will still guess wrong about things they don't know.

### Week 2: The orientation

You write your context files. You tell the agent who you are, where it is, what your rules are. You set up memory. Things start clicking. The agent stops guessing and starts knowing. Conversations get shorter because you don't have to re-explain everything.

### Week 3-4: The tuning

You're working on real things now. The agent helps. But you're still correcting it — "don't do it that way, do it this way." Each correction gets saved to memory or turned into a skill. The agent gets incrementally better. Not smarter — just more aligned with how you work.

### Month 2+: Just working

You stop thinking about the agent as a project. It's just there, helping. You still hit occasional issues, but you have patterns for dealing with them — a buddy agent, a health check, a rollback. The setup work is behind you.

## What will go wrong (and that's okay)

Here are things that actually happened to us in our first weeks:

| What happened | Why | How we handled it |
|---------------|-----|-------------------|
| Agent crashed trying to update itself | Nobody told it to research before acting | Wrote a hard rule in AGENTS.md: "research first, then act" |
| Agent's memory filled up | It was stuffing knowledge into a 2,200-char notepad instead of using a knowledge base | Built a knowledge base, moved knowledge out of memory, left memory as a pointer |
| Agent used a paid API without permission | The fallback chain included a paid provider | Removed it from fallback, added hard rule: "never use paid APIs without asking" |
| Agent suggested restarting a service we didn't have | It assumed we had a gateway setup | Added to memory: "this is a Windows app/terminal setup, not a gateway" |
| Two agents couldn't share context | They were completely separate instances | Used one agent's context to write a setup prompt for the other (the buddy system) |

Every one of these felt like a crisis when it happened. None of them were. They were all just missing context — things the agent didn't know that we hadn't told it yet.

## What you don't need

- **You don't need to be a developer.** If you can write a text file and follow instructions, you can configure an agent. The hardest technical thing you'll do is run a few terminal commands, and we'll walk you through every one.
- **You don't need to understand how AI works.** You don't need to know what a transformer is or how tokenization works. You need to know how to describe yourself and your work clearly — which you already know how to do.
- **You don't need expensive hardware.** Hermes runs on a modest machine. You can use local models (free) or cloud models (paid, but cheap for text). We'll cover both.
- **You don't need to get it right the first time.** Configuration is iterative. You write context, the agent misunderstands something, you correct it, it gets better. That's the process. Nobody gets it perfect on day one.

## What you do need

- **Willingness to write things down.** The core skill of agent configuration is writing clear context. If you can write a good email explaining how you like to work, you can configure an agent.
- **Patience for the first two weeks.** It gets much better, but the initial tuning period requires some back-and-forth.
- **A willingness to let the agent make mistakes.** Not dangerous ones — we'll show you how to set guardrails. But you have to let it try things and fail, then correct it. That's how it learns your preferences.

## The mindset shift

Here's the biggest thing: **your agent is not a search engine.** It's not a chatbot. It's a partner that needs onboarding.

The people who get the most out of local agents are the ones who treat setup as real work — not a chore to rush through, but an investment that pays off every day after. An hour spent writing good context files saves hundreds of hours of repeated explanations and corrections over the life of the agent.

Take the time. It's worth it.