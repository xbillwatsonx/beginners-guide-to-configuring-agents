# Installing Hermes Agent

## Prerequisites

Before you install Hermes, you need:

1. **A computer running Linux, macOS, or Windows with WSL** (Windows Subsystem for Linux)
   - On Windows, we recommend using WSL (Ubuntu) — it's the most tested path
   - Native Windows works too via the desktop app, but some things are easier in WSL
2. **Python 3.11 or newer**
3. **An AI model to talk to** — either:
   - A local model via [Ollama](https://ollama.ai) (free, runs on your machine)
   - A cloud model via an API provider (OpenRouter, OpenAI, Anthropic, etc.)
4. **A terminal** — the command line is where Hermes lives

## The install

> **Note:** Hermes has an official install guide. This is our simplified version for beginners. When in doubt, the [official docs](https://hermes-agent.nousresearch.com/docs) are authoritative.

### Step 1: Install Hermes

On Linux/macOS/WSL:

```bash
pip install hermes-agent
```

On native Windows, you can use the desktop installer from the [Hermes website](https://hermes-agent.nousresearch.com).

### Step 2: Initialize your Hermes workspace

```bash
hermes init
```

This creates your Hermes home directory (usually `~/.hermes/`) with the basic structure:

```
~/.hermes/
├── config.yaml      — your main config file
├── .env             — where API keys go (never share this)
├── SOUL.md          — your agent's personality and operating principles
├── AGENTS.md        — your agent's environment context (you'll write this)
├── memories/
│   ├── MEMORY.md    — your agent's compact memory (2,200 char limit)
│   └── USER.md      — who you are (1,375 char limit)
└── skills/          — where reusable workflows live
```

### Step 3: Choose your AI model

This is where a lot of beginners get stuck. Let's break it down simply:

**Option A: Local model with Ollama (free)**

1. Install [Ollama](https://ollama.ai)
2. Pull a model: `ollama pull llama3.2` (or another model of your choice)
3. In your Hermes config, set the provider to ollama and the model to whatever you pulled

Local models are free, private, and run entirely on your machine. They're less capable than cloud models but good enough for most tasks. Great for learning and experimentation.

**Option B: Cloud model via API (paid)**

1. Sign up for an API provider (OpenRouter is a good starting point — it gives you access to many models with one key)
2. Get your API key
3. Put the key in your `.env` file
4. In your Hermes config, set the provider and model

Cloud models are smarter and faster but cost money per message. For text tasks, costs are usually small (pennies per conversation). For heavy coding work, costs add up faster.

**Our recommendation for beginners:** Start with a local model via Ollama. It's free, private, and you can't accidentally spend money. Once you're comfortable, add a cloud provider as an option.

### Step 4: Test it

```bash
hermes chat
```

You should be able to have a basic conversation. If this works, the install is done. If it doesn't, check the [troubleshooting section](#troubleshooting) below.

## Troubleshooting

| Problem | Likely cause | Fix |
|---------|-------------|-----|
| `command not found: hermes` | pip install didn't complete or isn't in PATH | Try `pip install --user hermes-agent`, then check your PATH |
| Agent doesn't respond | Model not configured or not running | Check config.yaml has the right provider and model. If using Ollama, make sure Ollama is running (`ollama serve`) |
| Permission errors | File permissions on ~/.hermes/ | `sudo chown -R $USER:$USER ~/.hermes/` |
| Model is slow | Local model on weak hardware | Use a smaller model, or switch to a cloud provider |

## What to do next

Don't skip ahead to the fun stuff. The install is done, but your agent is a blank slate. The next two sections are the most important part of this entire guide:

1. [Post-Install Checklist](post-install-checklist.md) — a quick verification that everything is set up right
2. [Your First Conversation](first-conversation.md) — what to say (and not say) to your agent on day one
3. Then [02 - Context](../02-context) — where the real transformation happens