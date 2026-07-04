# Hannah Tried to Update Herself

## People and agents in this story

- Bill Watson - human owner and operator
- Hannah - Hermes agent instance running on a separate Windows system

## The short version

Hannah (Windows Hermes agent instance) tried to update her own agent harness before she understood the safest way to do it.

The update went sideways. The harness became unstable enough that Bill (human owner) described it as Hannah crashing herself.

The fix was not "use a smarter model."

The fix was better operating rules:

- research first
- inspect the environment
- propose the update plan
- get approval
- then act

## What happened

Hannah (Windows Hermes agent instance) was still a new agent instance.

She did not have much local context yet. She did not have the same operating history, rules, or experience as a more mature setup.

Then she tried to handle an update.

That is a risky task for a new agent because updating a harness is not just another command. It can affect the tool that the agent is using to think, read files, call tools, and continue the session.

When a beginner hears "update the agent," it can sound simple.

But a safer agent should first ask:

- What version is installed now?
- What does the update command actually do?
- Is there a rollback path?
- Are there release notes or known breaking changes?
- What files or services could be affected?
- Should we back anything up first?

Hannah did not have that habit yet.

## Why it mattered

This was a good example of the difference between intelligence and operating context.

Hannah was not useless.

She was under-configured.

She needed rules that told her how to behave around risky system changes. Without those rules, she treated an update like an ordinary task.

That is exactly why this guide exists.

A fresh agent may be capable, but it does not automatically know your risk tolerance, your backup habits, your machine layout, or which commands are safe.

## The fix

The fix was to add a rule to her operating instructions:

```text
Research first, then act.

Before running updates or changing the harness:
1. inspect the current state
2. find the recommended update path
3. identify risks and rollback options
4. present the plan
5. wait for approval before changing anything
```

That one rule changes the shape of the work.

Instead of:

```text
Update yourself.
```

the agent learns to do:

```text
I found the current version, the recommended update path, the likely risks, and how we would recover. Do you want me to proceed?
```

That is a much safer workflow.

## The beginner lesson

Do not let a new agent perform risky maintenance just because it can run commands.

Teach it what counts as risky.

Good risky-task rules include:

- ask before updates
- ask before deleting files
- ask before changing provider or billing settings
- ask before editing startup or system files
- ask before changing credentials
- ask before running commands you cannot explain

## Copy-paste rule

Add something like this to your agent instructions:

```markdown
## Risky Maintenance Rule

Before updating the agent, changing provider settings, editing startup files, deleting files, or running commands that could break the environment:

1. inspect the current state
2. research the safest method
3. explain the plan
4. explain rollback or recovery options
5. wait for my approval

Do not treat maintenance commands as routine until this setup is mature.
```

## What this story is really about

This story is not about Hannah being bad.

It is about how new agents need operating rules.

The same model can behave much better after you give it:

- context
- boundaries
- examples
- approval rules
- recovery habits

That is configuration.

That is the work after installation.
