# Maintenance Prompts

These prompts are for regular upkeep.

Use them manually first. Once you trust the process, you can turn some of them into scheduled report-only checks.

## 1. Weekly health check

```text
Run a weekly agent health check.

Inspect:
1. AGENTS.md
2. SOUL.md
3. USER.md
4. MEMORY.md
5. provider/model configuration
6. recent repeated mistakes or corrections

Report:
1. what looks healthy
2. what looks stale
3. what may cost money
4. what should move out of memory
5. what changes you recommend

Do not edit files. This is a report-only check.
```

## 2. Memory drift check

```text
Review memory for drift.

Tell me:
1. which entries are still useful
2. which entries are outdated
3. which entries belong in AGENTS.md, SOUL.md, USER.md, or project docs instead
4. which entries should become short pointers to a knowledge base
5. what new reminders may be missing

Do not rewrite memory yet. Show me the proposed cleanup first.
```

## 3. Provider and cost check

```text
Inspect the current model/provider configuration.

Tell me:
1. which provider is the default
2. which providers are available
3. whether any paid provider can be used automatically
4. whether any fallback chain could spend money
5. what rule should exist to prevent accidental paid usage

Do not change configuration yet. Show me findings and recommendations first.
```

## 4. Context freshness check

```text
Review AGENTS.md, SOUL.md, USER.md, and MEMORY.md for freshness.

Find:
1. outdated paths
2. stale project references
3. rules that conflict
4. vague instructions
5. repeated guidance
6. missing rules from recent corrections

Do not edit yet. Give me a short change list with exact proposed wording.
```

## 5. Backup check

```text
Check whether my important agent configuration files are backed up.

Important files:
- AGENTS.md
- SOUL.md
- USER.md
- MEMORY.md
- provider/config files
- reusable prompt files

Do not copy secrets or .env files unless I specifically approve a safe secret-backup process.

Report:
1. what appears backed up
2. what is not backed up
3. where backups should live
4. the exact commands you recommend

Do not run backup commands until I approve them.
```

## 6. Turn repeated mistakes into rules

```text
Here is a mistake or correction that happened more than once:

[describe it]

Help me turn this into a durable rule.

Tell me:
1. where it belongs
2. the exact wording
3. whether it should be a memory reminder, context rule, project note, or skill/prompt
4. how we can verify the rule worked later

Do not write files until I approve.
```

## 7. Monthly cleanup review

```text
Run a monthly cleanup review for my agent setup.

Look for:
1. stale context
2. memory clutter
3. missing backup coverage
4. repeated mistakes
5. risky provider settings
6. old project references
7. prompts or workflows that should become reusable templates

Give me:
1. a short summary
2. a prioritized fix list
3. anything you recommend doing now
4. anything that can wait

Do not make changes during this review.
```
