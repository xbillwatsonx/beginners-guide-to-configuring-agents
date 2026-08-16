# When to Use a Buddy

## The simple rule

If one agent is stuck, do not keep arguing with it forever.

Use a better-oriented agent as a buddy.

The buddy's job is to inspect, reason, and verify from the outside.

## Good buddy situations

Use a buddy when the first agent:

- keeps repeating the same wrong answer
- does not know where its config files are
- cannot explain which model/provider it is using
- has memory full of old notes
- is trying to fix itself without enough context
- is making changes you do not fully trust
- needs someone else to review its setup

## Bad buddy situations

Do not use a buddy just because it sounds advanced.

You probably do not need a buddy for:

- a simple writing task
- a one-file edit
- a normal question
- a basic search
- anything the first agent already handled correctly

The goal is not more agents. The goal is less confusion.

## The buddy roles

A buddy can play different roles.

### Inspector

The buddy reads files and reports what it sees.

```text
Inspect this other agent's config and tell me what looks wrong.
Do not change files yet.
```

### Translator

The buddy turns your goal into a clear prompt for the other agent.

```text
Write a focused setup prompt I can paste into the other agent.
Keep it specific and verifiable.
```

### Repair helper

The buddy proposes or makes safe file edits when it has access.

```text
You have access to the other agent's config files.
Propose the minimal edits needed to fix provider routing.
Do not edit until I approve.
```

### Verifier

The buddy checks whether the other agent is healthy afterward.

```text
Review the changed files and tell me whether the fix actually landed.
```

## The real lesson

When Hannah was underconfigured, the useful move was not to keep asking Hannah to figure everything out herself.

Hermes had better context and could inspect files from WSL. That made Hermes the better repair buddy.

This is a practical workflow:

1. identify the confused agent
2. choose a better-oriented buddy
3. inspect before editing
4. make the smallest fix
5. verify from outside

## A beginner-safe rule

The buddy should not secretly make changes.

Use this boundary:

```text
Inspect first. Report findings. Propose changes. Wait for approval before editing.
```

That keeps the buddy system helpful instead of chaotic.

## Buddy access safety

When you give a second agent access to the first agent's files, keep these boundaries:

- **Least privilege**: the buddy should only read the specific files it needs to inspect. Do not give it blanket access to the whole workspace.
- **No credentials**: the buddy must not read `.env` files, API keys, SSH keys, password stores, or any secrets folder. Exclude those before the buddy starts.
- **Read-only first**: the buddy should inspect and report before it is allowed to edit anything. Approval is required before each edit.
- **Sensitive-file boundaries**: if the main agent's workspace contains customer data, financial records, or private correspondence, tell the buddy to skip those files.
- **Scope limit**: give the buddy a specific task, not open-ended access. "Inspect the AGENTS.md and MEMORY.md files and report what looks wrong" is safe. "Look around and fix things" is not.
- **Audit trail**: after the buddy finishes, record what it inspected, what it changed, and what it recommended. This creates a repair trail you can review later.
- **Revoking access**: when the buddy is done, it does not need ongoing access. Its job is finished.
