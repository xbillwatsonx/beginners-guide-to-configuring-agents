# Cross-Agent Configuration

## What this means

Cross-agent configuration means using one agent to help configure another agent.

Example:

```text
Hermes helps configure Hannah.
```

The buddy agent may:

- read the other agent's config files
- compare settings against your rules
- write a setup prompt
- recommend file edits
- verify the other agent after changes

## Why this works

The confused agent may not know what is wrong.

The buddy agent may have:

- better context
- better instructions
- access to docs
- access to the other agent's files
- a clearer view of what changed

That outside view is valuable.

## The safest workflow

Use this order:

1. inspect
2. report
3. propose
4. approve
5. edit or prompt
6. verify

Do not skip straight to editing.

## Step 1: inspect

Ask the buddy:

```text
I need you to inspect another agent's setup.

Do not change files.

Find:
1. where its context files are
2. where its memory files are
3. where its provider/model config is
4. whether its rules match my current preferences
5. anything risky, stale, or unclear

Report findings with file paths and exact lines where possible.
```

## Step 2: report

The report should be specific.

Bad report:

```text
The config looks wrong.
```

Good report:

```text
The provider fallback includes a paid provider. That conflicts with your rule to ask before paid API usage.
```

## Step 3: propose

Ask for the smallest fix:

```text
Propose the minimal changes needed.

For each change, show:
1. file path
2. current problem
3. recommended wording or setting
4. why it fixes the issue
5. how we will verify it

Do not edit yet.
```

## Step 4: approve

You decide whether the buddy can edit.

If you are unsure, ask the buddy to explain the risk:

```text
Before I approve this, tell me what could go wrong and how we would undo it.
```

## Step 5: edit or prompt

There are two paths.

### Path A: direct file edit

If the buddy has safe filesystem access, direct edits are often clearer.

Use this when:

- the fix is a simple config or context edit
- the buddy can read the file directly
- the change can be backed up or reverted
- you can verify the result

### Path B: setup prompt

If the buddy cannot safely edit, have it write a prompt for the other agent.

Use this when:

- the other agent must act in its own environment
- the buddy lacks access
- the change requires the other agent's tools
- you want the other agent to explain its own state

## Step 6: verify

After changes, ask the buddy:

```text
Verify the fix.

Check:
1. the exact files/settings that changed
2. whether the original issue is resolved
3. whether any new risk was introduced
4. whether the other agent can now explain its setup correctly

Give me a short pass/fail result.
```

## What to avoid

Avoid:

- letting two agents make changes at the same time
- asking a confused agent to self-repair without outside review
- copying huge context dumps between agents
- editing provider settings without backups
- assuming a prompt worked without verification

## The main lesson

The buddy system is not about trust without checking.

It is about getting a second set of eyes and verifying the result.
