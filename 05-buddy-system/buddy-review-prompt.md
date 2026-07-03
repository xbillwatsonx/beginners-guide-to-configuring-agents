# Buddy Review Prompt

Use this when you want one agent to review another agent's setup.

## Full prompt

```text
You are acting as a buddy reviewer for another AI agent setup.

Your job is to inspect, report, and recommend.

Do not edit files unless I explicitly approve changes after your report.

Review these areas:

1. Context files
   - AGENTS.md
   - SOUL.md
   - USER.md
   - any other startup/context files

2. Memory
   - MEMORY.md
   - whether memory is compact
   - whether long reference material should move to a knowledge base

3. Provider/model configuration
   - default model/provider
   - fallback chain
   - any paid providers
   - whether paid usage requires permission

4. Safety rules
   - destructive file operations
   - paid API usage
   - secrets/API keys
   - backups before edits

5. Stale or missing context
   - old paths
   - old project names
   - missing current priorities
   - repeated mistakes that should become rules

For each finding, report:

- severity: high, medium, or low
- file/path involved
- evidence
- why it matters
- recommended fix
- how to verify the fix

End with:

1. what looks healthy
2. what should be fixed before real work continues
3. what can wait
4. whether you recommend direct edits or a prompt handoff
```

## Short version

```text
Act as a buddy reviewer for another agent.

Inspect its context, memory, provider config, safety rules, and stale assumptions.

Do not edit files.

Give findings with evidence, recommended fixes, and verification steps.
```

## What a good buddy review looks like

Good:

```text
Medium: Paid provider fallback is enabled.

Evidence: config.yaml includes openrouter in fallback list.

Why it matters: this conflicts with the rule to ask before paid API usage.

Recommended fix: remove paid provider from automatic fallback or require explicit approval.

Verification: inspect config again and ask the agent which provider it will use by default.
```

Bad:

```text
Everything seems fine.
```

If the buddy cannot provide evidence, the review is not done.

## After the review

Do not apply every recommendation blindly.

Ask:

```text
Which fixes are necessary before we continue, and which can wait?
```

Then fix the smallest necessary set first.
