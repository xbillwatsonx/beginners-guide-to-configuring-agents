# Installing Hermes Agent

## Prerequisites

Before you install Hermes, you need:

1. **A computer running Linux, macOS, Windows, WSL2, or Termux**
   - On macOS or Windows, the Hermes Desktop installer is the easiest path for most beginners
   - On Linux, WSL2, macOS terminal, or Termux, the command-line installer works well
3. **An AI model to talk to** — either:
   - A local model via [Ollama](https://ollama.ai) (free, runs on your machine)
   - A cloud model via an API provider (OpenRouter, OpenAI, Anthropic, etc.)
4. **A terminal** — the command line is where Hermes lives

## The install

> **Note:** Hermes has an official install guide. This is our simplified version for beginners. When in doubt, the [official docs](https://hermes-agent.nousresearch.com/docs) are authoritative.

### Step 1: Install Hermes

On macOS or Windows, the simplest beginner path is the Hermes Desktop installer from the [Hermes website](https://hermes-agent.nousresearch.com).

If you want the command-line install instead, use the command for your system.

On Linux, macOS, WSL2, or Termux:

```bash
curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash
```

On native Windows, run this in PowerShell:

```powershell
iex (irm https://hermes-agent.nousresearch.com/install.ps1)
```

After installation, reload your terminal or open a new one so the `hermes` command is available.

### Step 2: Run Hermes setup

```bash
hermes setup
```

This walks you through the first setup. Hermes stores its user files in a Hermes home directory. On Linux, macOS, WSL2, and Termux, that is usually `~/.hermes/`.

You may see files and folders like:

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

Exact files can change as Hermes evolves, so do not worry if your folder is not identical. The important thing is that Hermes can start, remember its config, and reach your chosen model.

### Step 3: Choose your AI model

This is where a lot of beginners get stuck. Let's break it down simply:

**Option A: Local model with Ollama (free)**

1. Install [Ollama](https://ollama.ai)
2. Pull a model: `ollama pull llama3.2` (or another model of your choice)
3. Run `hermes model` and choose Ollama as your provider

Local models are free, private, and run entirely on your machine. They're less capable than cloud models but good enough for most tasks. Great for learning and experimentation.

**Option B: Cloud model via API (paid)**

1. Sign up for an API provider (OpenRouter is a good starting point — it gives you access to many models with one key)
2. Get your API key
3. Run `hermes model` and follow the prompts for your provider and model
4. Or run `hermes setup --portal` if you want to use Nous Portal

Cloud models are smarter and faster but cost money per message. For text tasks, costs are usually small (pennies per conversation). For heavy coding work, costs add up faster.

**Our recommendation for beginners:** Start with a local model via Ollama. It's free, private, and you can't accidentally spend money. Once you're comfortable, add a cloud provider as an option.

### Step 4: Test it

```bash
hermes
```

You should be able to have a basic conversation. If this works, the install is done. If it doesn't, check the [troubleshooting section](#troubleshooting) below.

## Troubleshooting

| Problem | Likely cause | Fix |
|---------|-------------|-----|
| `command not found: hermes` | Your shell has not reloaded or the install path is not on PATH | Open a new terminal, reload your shell, then try `hermes` again |
| Agent doesn't respond | Model not configured or not running | Run `hermes model` or `hermes setup`. If using Ollama, make sure Ollama is running (`ollama serve`) |
| Permission errors | File permissions on ~/.hermes/ | `sudo chown -R $USER:$USER ~/.hermes/` |
| Model is slow | Local model on weak hardware | Use a smaller model, or switch to a cloud provider |

Hermes also includes a diagnostic command:

```bash
hermes doctor
```

Run that when something feels broken and you want Hermes to check the setup.

## What to do next

Don't skip ahead to the fun stuff. The install is done, but your agent is a blank slate. The next two sections are the most important part of this entire guide:

1. [Post-Install Checklist](post-install-checklist.md) — a quick verification that everything is set up right
2. [Your First Conversation](first-conversation.md) — what to say (and not say) to your agent on day one
3. Then [02 - Context](../02-context) — where the real transformation happens
