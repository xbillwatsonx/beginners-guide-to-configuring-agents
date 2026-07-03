# Health Checks

## A health check is a quick inspection

A health check is not a deep repair session.

It is a short pass that answers:

```text
Is my agent still configured the way I expect?
```

If the answer is yes, you move on. If the answer is no, you fix one small thing before it turns into a mystery later.

## What to check

For a beginner setup, check these areas:

1. The agent starts
2. The model/provider is what you expect
3. Memory is not full or messy
4. Context files still match reality
5. Paid tools are not automatic
6. Important config files are backed up

## 1. Check that the agent starts

For Hermes, the simplest check is:

```bash
hermes --version
```

Then start a normal chat the way you usually do.

If Hermes does not start, do not immediately reinstall. First ask:

- Did the command change?
- Did my shell/path change?
- Did Python or the environment change?
- Did I update recently?
- Is there an error message I should save?

Copy the error into a note. Error messages are evidence.

## 2. Check the model/provider

Provider confusion is one of the easiest ways to lose trust.

Ask your agent:

```text
Tell me which model/provider you are using right now.

Then inspect your config and tell me:
1. which providers are configured
2. which provider is the default
3. whether any paid provider can be used automatically
4. whether any fallback chain could spend money without asking me

Do not change anything yet.
```

This matters because one of our real setup issues involved paid provider routing. The fix was a clear rule:

```markdown
Never use paid API providers without explicit permission.
```

## 3. Check memory size and quality

Memory should be short.

Ask:

```text
Review your memory file.

Tell me:
1. whether it is still compact
2. whether anything in it belongs in AGENTS.md, USER.md, SOUL.md, or a knowledge base instead
3. whether any entry is outdated
4. whether any important reminder is missing

Do not rewrite memory yet. Give me a proposed cleanup plan first.
```

If the agent says memory is full, go back to [03 - Memory](../03-memory).

## 4. Check context files

Your context files should match your current reality.

Look for:

- old project paths
- old model names
- rules you no longer want
- missing rules from recent mistakes
- a tone that no longer fits
- stale "current focus" notes

Prompt:

```text
Review AGENTS.md, SOUL.md, USER.md, and MEMORY.md.

Find anything that appears outdated, duplicated, vague, or likely to cause wrong assumptions.

Do not edit yet. Show me a proposed change list first.
```

## 5. Check paid tool boundaries

If your setup includes cloud models, API providers, or paid tools, check them regularly.

Prompt:

```text
Inspect the current provider/tool configuration and tell me whether anything can spend money automatically.

If yes, show me exactly where and recommend the safest beginner-friendly setting.

Do not change anything until I approve it.
```

## 6. Check backups

At minimum, back up:

- `AGENTS.md`
- `SOUL.md`
- `USER.md`
- `MEMORY.md`
- provider/config files
- important prompt templates

You do not need an elaborate backup system on day one. Even timestamped copies are better than nothing.

Example:

```bash
mkdir -p ~/agent-backups/hermes
cp ~/.hermes/AGENTS.md ~/agent-backups/hermes/AGENTS.md.$(date +%Y%m%d)
cp ~/.hermes/SOUL.md ~/agent-backups/hermes/SOUL.md.$(date +%Y%m%d)
```

Only copy files you know are safe to store. Do not copy `.env` files containing API keys into random folders.

## The result you want

A good health check ends with one of these:

```text
Everything looks healthy. No changes recommended.
```

or:

```text
I found three small issues. Here is the proposed fix list. Please approve before I change anything.
```

That is the habit.
