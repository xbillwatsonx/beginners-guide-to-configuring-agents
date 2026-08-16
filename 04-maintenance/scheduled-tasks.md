# Scheduled Tasks

## Why schedule anything?

If a check only happens when you remember it, it will eventually stop happening.

Scheduled tasks are how you make maintenance boring.

That is good. Boring maintenance prevents exciting problems.

## What to schedule

Start small.

Good beginner schedules:

- weekly context review
- weekly memory audit
- weekly provider/cost check
- monthly backup check
- monthly "what mistakes repeated?" review

Do not schedule complex repairs at first. Schedule inspections.

## The beginner-safe rule

Your first scheduled tasks should report before changing anything.

Use this pattern:

```text
Inspect, summarize, recommend.
Do not edit files unless I approve the proposed changes.
```

This keeps automation helpful without making it scary.

## Example weekly check

Here is a simple weekly maintenance prompt:

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

You can paste that manually once a week. Later, if your harness supports scheduled tasks, you can schedule it.

### A complete cron example

If you are on Linux, macOS, or WSL, here is a complete beginner-safe cron setup:

**1. Create a small script:**

```bash
#!/bin/bash
# weekly-agent-check.sh
# Run this from cron to produce a report-only health check

echo "=== Weekly Agent Health Check ==="
echo "Date: $(date)"
echo ""

echo "--- AGENTS.md exists? ---"
if [ -f ~/.hermes/AGENTS.md ]; then echo "YES"; else echo "MISSING"; fi

echo "--- SOUL.md exists? ---"
if [ -f ~/.hermes/SOUL.md ]; then echo "YES"; else echo "MISSING"; fi

echo "--- MEMORY.md size ---"
wc -c ~/.hermes/memories/MEMORY.md 2>/dev/null || echo "MISSING"

echo "--- Disk space ---"
df -h ~ | tail -1

echo "=== Check complete ==="
```

**2. Make it executable:**

```bash
chmod +x ~/weekly-agent-check.sh
```

**3. Add it to cron:**

Open your crontab:

```bash
crontab -e
```

Add this line to run it every Sunday at 7 AM:

```
0 7 * * 0 /home/YOURNAME/weekly-agent-check.sh >> /home/YOURNAME/agent-check.log 2>&1
```

**4. Verify it was added:**

```bash
crontab -l
```

**5. To remove it later:**

```bash
crontab -e
# Delete the line, save, and exit
crontab -l
```

This script only reports. It does not edit files, delete anything, or run paid models. The output goes to `agent-check.log` so you can review it later.

## Linux, macOS, and WSL: cron

On Linux, macOS, or WSL, scheduled tasks often use `cron`.

Cron is a built-in scheduler. It runs commands at specific times.

For beginners, the safest first cron job is not a complicated agent workflow. It is a small command that writes a reminder or starts a report-only check.

Before adding cron jobs, ask your agent:

```text
Help me set up a beginner-safe weekly maintenance reminder.

Before changing anything:
1. explain how scheduled tasks work on this system
2. show me the exact command you recommend
3. explain where logs will go
4. explain how to disable the task
5. confirm the task will report only and not edit files
```

If you do not understand the schedule, do not install it yet.

## Windows: Task Scheduler

On Windows, the built-in scheduler is Task Scheduler.

If you are using Hermes Desktop or another Windows-based setup, ask:

```text
Help me create a Windows Task Scheduler reminder for a weekly agent maintenance check.

Do not create it yet.

First show me:
1. the task name
2. the schedule
3. what command or reminder it will run
4. where output/logs will go
5. how I can disable it
```

Again: report first, change later.

## What not to schedule at first

Do not start with tasks that:

- delete files
- update the agent automatically
- change provider settings automatically
- rewrite memory automatically
- run paid models automatically
- push to GitHub automatically

Those may be useful later, but not as beginner maintenance.

## A good first schedule

Start with this:

- weekly report-only health check
- monthly backup check

After a month, review whether those checks helped. If they did, you can add more.

## The goal

Scheduled tasks should make your setup calmer.

If a scheduled task makes you nervous because you do not know what it does, it is too complicated. Simplify it.
