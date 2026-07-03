# Direct Inspection vs Prompting

## Two ways a buddy can help

When one agent helps another, there are two common approaches:

1. direct inspection
2. prompt handoff

Both are useful. Pick the one that matches the situation.

## Direct inspection

Direct inspection means the buddy reads the other agent's files itself.

This is best when:

- the buddy has safe access to the files
- the problem is in config, memory, or context
- exact file contents matter
- the other agent is confused
- you want verification from outside

Example:

```text
Inspect Hannah's config files from WSL and tell me whether her providers are configured safely.
Do not change anything yet.
```

Direct inspection is usually better for config issues because it uses evidence.

## Prompt handoff

Prompt handoff means the buddy writes a prompt for you to paste into the other agent.

This is best when:

- the buddy cannot access the files
- the other agent must run commands in its own environment
- you want the other agent to explain itself
- the task is interactive

Example:

```text
Write a prompt I can paste into Hannah asking her to audit her memory and report what should move to the knowledge base.
```

Prompt handoff is useful, but it is less reliable than inspection for exact config problems.

## What we learned

In our setup, asking a less-configured agent to fix itself was sometimes inefficient.

It would overthink simple settings, burn time, and still need verification.

When the buddy had file access, direct inspection was better:

- read the file
- identify the issue
- propose a minimal edit
- verify the edit

That is simpler than writing a long prompt and hoping the confused agent follows it perfectly.

## A good decision rule

Ask:

```text
Can the buddy safely inspect the real files?
```

If yes, inspect first.

If no, write a focused prompt for the other agent.

## Direct inspection prompt

```text
You are acting as a buddy for another agent.

Inspect its setup from the outside.

Do not edit files.

Find:
1. context files
2. memory files
3. provider/model config
4. safety rules
5. stale or risky settings

Report findings with file paths and exact evidence.

Then propose the smallest safe fix.
```

## Prompt handoff prompt

```text
Write a prompt I can paste into another agent.

Goal:
[describe goal]

The prompt should:
1. tell the agent exactly what to inspect
2. require it to report before editing
3. ask for file paths and evidence
4. require backup before changes
5. require a final verification report

Keep it concise and copy-pasteable.
```

## Verification prompt

After either path, verify:

```text
Act as the outside verifier.

Check whether the buddy-system fix worked.

Tell me:
1. what changed
2. what evidence proves it changed
3. whether the original issue is resolved
4. whether anything still needs attention
5. whether it is safe to move on
```

## The main rule

Do not confuse activity with progress.

The buddy system works when it produces evidence, not just more conversation.
