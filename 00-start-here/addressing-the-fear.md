# Addressing the Fear

## Let's talk about it directly

If you're nervous about installing a local AI agent on your computer, that's not irrational. You're about to give a piece of software the ability to read your files, run commands, and make changes to your system. That's a real decision with real implications.

The internet is full of two kinds of content about this:

1. **Hype:** "AI agents are amazing, just install it and everything will be perfect!"
2. **Fear porn:** "AI agents will delete your files, steal your data, and burn down your house!"

Neither is accurate. Let's talk about what's actually true.

## What an agent can actually do

A local AI agent like Hermes can:

- **Read files** on your computer
- **Write and edit files** on your computer
- **Run terminal commands** (install packages, run scripts, etc.)
- **Access the internet** (search the web, fetch pages, call APIs)
- **Send messages** (if you connect it to a messaging platform like Telegram or Discord)

That's a lot of power. It's also the same power that any development tool has — your code editor can read and write files, your terminal can run commands, your browser can access the internet. The difference is that with an agent, *you tell it what to do in plain language* and it figures out how to do it.

That's the real difference. And it's worth being thoughtful about.

## What an agent cannot do

- **It cannot act on its own.** Agents don't do things unless you ask them to. There's no background process making decisions without you. (Scheduled tasks exist, but you set them up explicitly and approve them.)
- **It cannot access things your user account can't access.** If you can't read a file, neither can the agent. It runs with your permissions, not more.
- **It cannot "escape" your computer.** It's a program running on your machine. It can't jump to other machines on your network unless you explicitly give it access.
- **It cannot modify its own core code without you knowing.** Hermes, specifically, requires explicit commands to update itself. And you can write rules that prevent it from trying.

## The real risks (and how to manage them)

| Risk | How real is it? | How to manage it |
|------|-----------------|------------------|
| Agent deletes important files | Low — agents ask before destructive actions by default | Set hard rules in AGENTS.md about what folders are off-limits. Use version control (git) on important projects. |
| Agent runs a dangerous command | Low — agents explain before acting by default | Tell the agent to explain before executing. Use the approval prompts. Don't give it passwordless sudo unless you trust it. |
| Agent exposes sensitive data (API keys, passwords) | Medium — if the agent reads a file with secrets and pastes them somewhere | Keep secrets in environment files (`.env`) that the agent reads but doesn't echo. Tell the agent never to print secrets. |
| Agent sends messages you didn't intend | Low — messaging is opt-in and you approve connections | Don't connect messaging platforms until you're comfortable. Review what the agent can send before connecting. |
| Agent spends money on paid APIs | Medium — if a paid provider is in the fallback chain | Remove paid providers from automatic fallback. Add a hard rule: "never use paid APIs without my permission." |

Notice the pattern: **every risk is manageable.** None require you to be a security expert. They require you to set some rules and think about what you're connecting.

## The guardrails that already exist

Local agent harnesses like Hermes have built-in safety mechanisms:

- **Approval prompts:** Before running commands or making changes, the agent shows you what it's about to do and asks for your go-ahead. You can say no.
- **Explain-before-act:** You can set rules that require the agent to explain what it's going to do before doing it — no silent actions.
- **Permission-gated actions:** You can restrict what tools the agent has access to. Don't want it to send messages? Don't enable the messaging tools. Don't want it to run terminal commands? Restrict the terminal toolset.
- **Configurable autonomy:** You decide how much freedom the agent has. Start restrictive, loosen up as you build trust.

## Practical steps for the cautious

If you're still nervous — and that's fine — here's how to start safely:

### 1. Start read-only

Configure the agent with read-only tools first. Let it read files, search the web, and answer questions. Don't give it write access or terminal access until you're comfortable.

### 2. Use a separate workspace

Create a dedicated folder for agent work. Don't point it at your whole home directory. Let it work within a sandbox area first, then expand as you build trust.

### 3. Read what it does

For the first week, read every command the agent runs and every file it writes. You'll learn how it thinks, and you'll catch mistakes early. This is tedious but educational — and temporary. Once you trust it, you can loosen up.

### 4. Set hard rules early

Before you let the agent do anything, write your hard rules in AGENTS.md:

```
- Never use paid APIs without my explicit permission
- Never delete files without asking
- Never modify files outside the workspace folder
- Explain what you're going to do before doing it
- If you're not sure, ask
```

These rules get injected into every session. The agent follows them.

### 5. Keep secrets separate

Put API keys and passwords in a `.env` file that the agent's config reads from. Tell the agent never to print the contents of `.env`. This keeps secrets out of conversations and out of git repos.

### 6. Use version control

If you're working on projects with the agent, use git. If the agent makes a change you don't like, you can revert. Version control is your safety net for file changes.

## The fear vs. the reality

We've been running local agents for weeks. In that time:

- **An agent crashed itself trying to update.** It was scary for about 10 minutes. Then we fixed it. The crash was because the agent didn't research before acting — a context problem, not a security problem. We added a rule. It hasn't happened again.
- **An agent filled its memory and couldn't remember anything new.** Annoying, not dangerous. We restructured its memory and built a knowledge base. Problem solved permanently.
- **An agent suggested things that didn't apply to our setup.** It assumed we had a gateway service. We don't. We added one line to memory. Fixed forever.

None of these were security incidents. They were configuration gaps — things the agent didn't know that we hadn't told it. The fix was always more context, not more security.

## The honest bottom line

**Is there risk?** Yes. There's risk in installing any software that can read and write files. Your code editor has the same risk. Your terminal has the same risk. The question isn't "is there risk" — it's "is the risk manageable, and is the payoff worth it."

**Is the risk manageable?** Yes. With basic guardrails (rules, approval prompts, version control, secret separation), the risk is comparable to using any development tool. You don't need to be a security expert. You need to be thoughtful.

**Is the payoff worth it?** That's for you to decide. For us, the answer has been a clear yes — but we're not going to pretend it's been flawless. It hasn't. It's been messy, iterative, and occasionally frustrating. And it's also been genuinely transformative in how we work.

If you're willing to invest the time in setup, the payoff is an agent that knows you, remembers your preferences, works the way you work, and gets better over time. That's not hype. That's what we actually experience, after the work was done.

## Where to go next

- Read [Why Setup Matters](why-setup-matters.md) if you haven't already
- Read [What to Expect](what-to-expect.md) for the realistic timeline
- When you're ready, head to [01 - Install](../01-install) to start