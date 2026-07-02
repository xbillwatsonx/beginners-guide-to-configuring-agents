# AGENTS.md — Beginner's Guide to Configuring Agents

## What this repo is

A public, beginner-friendly guide for people setting up and configuring their first local AI agent harness. Uses Hermes Agent as the worked example. Concepts transfer to any harness.

## Audience

- Complete beginners who've never installed a local agent
- Claude Code / Codex users graduating to a full harness
- People who installed an agent and are frustrated it doesn't "get" them

## Tone

- Real, not polished. We write about actual experiences.
- Encouraging, not intimidating. Plain language, no jargon without explanation.
- Honest about fear. Address security concerns directly without hype or fear-mongering.
- Show, don't tell. Real prompts, real commands, real outcomes.

## Repo structure

```
00-start-here/       — Why setup matters, expectations, addressing fear
01-install/          — Hermes install guide, post-install checklist, first conversation
02-context/          — How to describe yourself/business to your agent (+ prompts)
03-memory/           — How agent memory works, memory vs knowledge base (+ prompts)
04-maintenance/      — Scheduled health checks, long-term agent health
05-buddy-system/     — Using one agent to help another (real technique)
06-real-stories/     — What actually happened to us and what we learned
07-creators/         — Links to helpful creators in the space
templates/           — Copy-paste templates (AGENTS.md, SOUL.md, MEMORY.md)
```

## Writing rules

1. **Every guide must be followable by a non-developer.** If a term needs explaining, explain it inline the first time it appears.
2. **Every claim about agent behavior must be backed by a real example.** No "agents typically do X" without showing X happening.
3. **Every prompt must be copy-pasteable.** Test it before publishing.
4. **No fear porn.** Security concerns are addressed honestly and proportionately — not dramatized.
5. **No hype.** Don't promise things work perfectly. Show what happens when they don't and how to recover.
6. **Hermes is the example, not the only option.** Frame concepts so they transfer.

## Hermes-specific vs general

- **Hermes-specific content** (commands, file paths, config format): clearly marked as Hermes-specific
- **General concepts** (what context is, why memory matters, buddy system): written so they apply to any harness

## Real stories policy

- Stories in `06-real-stories/` are based on actual events from our experience
- No sensitive information (API keys, passwords, private paths)
- Bill approves each story before publishing
- Failures are included, not hidden — that's the point

## Contribution policy

- External contributions welcome (see CONTRIBUTING.md)
- Bill reviews and approves all merges
- Stories from other users encouraged — real experience is the currency

## License

MIT. Public repo. Everything here is meant to be shared, copied, and built on.