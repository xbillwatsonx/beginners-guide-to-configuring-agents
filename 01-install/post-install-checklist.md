# Post-Install Checklist

After installing Hermes, run through this checklist before doing anything else. It takes 10 minutes and saves you from confusing problems later.

## ✅ Core files exist

Check that `hermes init` created everything it should have:

```bash
ls ~/.hermes/
```

You should see:
- `config.yaml` ✓
- `.env` ✓
- `SOUL.md` ✓
- `memories/` directory ✓
- `skills/` directory ✓

If any are missing, re-run `hermes init`.

## ✅ Model is configured and responding

```bash
hermes chat
```

Ask it: "What is 2+2?" If it answers, your model is working. If it doesn't, go back to the [install guide](hermes-install-guide.md) and check your model config.

## ✅ API keys are in .env, not in config

Open `~/.hermes/.env` and verify your API keys are there (if using a cloud provider). They should NOT be in `config.yaml` — config files can accidentally get shared or committed to git. `.env` is the safe place.

```bash
# This should show your keys
cat ~/.hermes/.env

# This should NOT show any keys
grep -i "key\|token\|secret" ~/.hermes/config.yaml
```

## ✅ .env is in .gitignore (if using git)

If you're tracking your Hermes config with git (recommended!), make sure `.env` is ignored:

```bash
grep ".env" ~/.hermes/.gitignore
```

If it's not there, add it. Never commit your API keys to a repo.

## ✅ You know which model you're using

Check your config:

```bash
grep -A2 "model:" ~/.hermes/config.yaml
```

You should know:
- Which provider (ollama, openrouter, openai, etc.)
- Which model name
- Whether it's free (local) or paid (cloud)

If you're not sure, now is the time to figure it out. A lot of confusion later comes from not knowing what model is actually answering your questions.

## ✅ Paid providers are NOT in the automatic fallback chain

If you have a paid provider configured, check that it's not set to activate automatically:

```bash
grep -A5 "fallback" ~/.hermes/config.yaml
```

You want your fallback to be a free local model (Ollama), not a paid cloud model. Otherwise the agent can spend money without you realizing it.

**Hard rule to add to AGENTS.md right now:**
```
Never use paid API providers without my explicit permission.
```

## ✅ AGENTS.md exists

```bash
ls ~/.hermes/AGENTS.md
```

If it doesn't exist, create it now (even if it's minimal). We'll fill it out properly in [02 - Context](../02-context), but it should exist from day one.

A minimal AGENTS.md:

```markdown
# AGENTS.md

## Who I am
[Your name], [your role or what you do].

## Environment
- OS: [Linux/macOS/Windows WSL]
- Hermes home: ~/.hermes/

## Hard rules
- Never use paid APIs without my permission
- Explain before acting on anything destructive
- If you're not sure, ask
```

## ✅ You can find the official docs

Bookmark or note the location of the official Hermes docs:

- **Online:** https://hermes-agent.nousresearch.com/docs
- **Local cache:** `~/.hermes/reference/hermes-docs/` (if downloaded)

These are your reference when something goes wrong. Your agent should also know about them — add a line to AGENTS.md:

```
For Hermes config/upgrades/troubleshooting, check the official docs: https://hermes-agent.nousresearch.com/docs
```

## ✅ You have a safe workspace

If you're nervous about the agent touching your files (see [Addressing the Fear](../00-start-here/addressing-the-fear.md)), create a dedicated workspace:

```bash
mkdir ~/agent-workspace
```

And add to AGENTS.md:
```
Workspace: ~/agent-workspace/. Keep file operations within this directory unless I ask otherwise.
```

## All checked?

Great. You're ready for [Your First Conversation](first-conversation.md).