# Templates

These are starter files you can adapt for your own agent.

They are not magic.

They are a way to tell your agent:

- who you are
- how you want it to behave
- what matters long-term
- what it should ask before doing
- where deeper context lives

## Files in this folder

- [AGENTS-template.md](AGENTS-template.md) - operating rules for your agent
- [SOUL-template.md](SOUL-template.md) - identity, voice, mission, and personality
- [USER-template.md](USER-template.md) - your preferences, boundaries, and working style
- [MEMORY-template.md](MEMORY-template.md) - durable reminders and pointers
- [context-audit-prompt.md](context-audit-prompt.md) - prompt for reviewing whether your context files are still healthy

## How to use these

1. Copy the template into the location your agent harness expects.
2. Replace the bracketed examples with your real preferences.
3. Keep the files short at first.
4. Ask your agent to review them for contradictions.
5. Update them slowly as you learn what helps.

Do not try to write the perfect setup on day one.

Start with enough context to keep the agent safe and useful.

Then improve it after real sessions.

## A good first rule

If you only add one rule, add this:

```text
When a task could delete files, spend money, expose private information, change credentials, edit startup files, or break the environment, stop and ask before acting.
```

That one rule prevents a lot of beginner pain.
