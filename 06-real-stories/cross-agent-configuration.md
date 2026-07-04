# Hermes Helped Configure Hannah

## People and agents in this story

- Bill Watson - human owner and operator
- Hermes - Ubuntu agent instance
- Hannah - Hermes agent instance running on a separate Windows system

## The short version

Hermes (Ubuntu agent instance) helped configure Hannah (Windows Hermes agent instance).

At first, the plan was to have Hermes write prompts for Hannah to follow.

That helped a little, but it was not the best path for exact configuration work. Hannah was still new and not fully trusted with her own setup.

The better pattern was:

1. Hermes (Ubuntu agent instance) inspected the real files
2. Hermes (Ubuntu agent instance) reported what looked wrong
3. Bill (human owner) approved the direction
4. Hermes (Ubuntu agent instance) made or guided the smallest safe fix
5. Hermes (Ubuntu agent instance) verified the result

That became our buddy-system pattern.

## What happened

Hannah (Windows Hermes agent instance) was a separate agent instance.

She had her own environment, memory, and configuration.

Bill (human owner) wanted her set up correctly, but he did not fully trust her yet. That is normal with a new agent. A new agent may sound confident before it has earned that confidence.

So Hermes (Ubuntu agent instance) acted as the buddy.

At first, Hermes wrote prompts for Hannah.

That is useful when one agent cannot see another agent's files. But in this case, Hermes could inspect some of the relevant files from the outside.

That changed the best workflow.

For exact setup problems, direct inspection was better than long prompt handoff.

## Why prompting was not enough

Prompt handoff can work, but it has a weakness:

```text
You are asking the confused agent to diagnose and fix the thing it is confused about.
```

That can lead to:

- overthinking simple config edits
- vague reports
- extra token use
- missed details
- false confidence
- another review pass anyway

When the buddy can inspect the files directly, it can work from evidence instead of hoping the other agent explains itself correctly.

## The fix

The safer workflow became:

```text
Inspect first.
Report second.
Propose third.
Edit only after approval.
Verify last.
```

That workflow keeps the human in charge and keeps the buddy agent grounded in real files.

It also gives the new agent a better chance to improve without being asked to fix everything alone.

## The beginner lesson

If one agent is confused, do not always ask it to self-repair.

Use a second agent as a reviewer.

Ask the buddy agent:

```text
Inspect this other agent's setup from the outside.

Do not edit anything yet.

Find:
1. where its context files are
2. where its memory files are
3. where its provider or model settings are
4. whether the setup matches my rules
5. anything risky, stale, or unclear

Report findings with file paths and evidence.
Then propose the smallest safe fix.
```

## When to use direct inspection

Use direct inspection when:

- the buddy can safely read the files
- the problem is configuration-related
- exact settings matter
- the other agent is unreliable or confused
- you want proof, not guesses

Use prompt handoff when:

- the buddy cannot access the files
- the other agent must act in its own environment
- you need the other agent to explain its state
- the task is interactive

## What this story is really about

This story is not about one agent being better than another.

It is about using the right workflow.

For configuration, evidence beats conversation.

For beginners, that is a big lesson: when your agent sounds confused, slow down and inspect the real files.
