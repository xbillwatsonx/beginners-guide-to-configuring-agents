# 05 - Buddy System

## What the buddy system means

The buddy system means using one agent to help another agent.

Not as a gimmick. Not because "multi-agent" sounds impressive.

Use it when one agent is confused, underconfigured, broken, or too close to the problem.

One agent becomes the buddy:

- it inspects the other agent's files
- it checks configuration
- it reviews memory
- it writes a focused setup prompt
- it verifies whether the fix worked

## The real pattern

We used this with Hermes and Hannah.

Hermes was running in WSL and had better visibility into files. Hannah was the Windows Desktop agent and was still underconfigured.

Instead of endlessly prompting Hannah to fix herself, Hermes acted as the buddy:

- inspected Hannah's files
- checked provider setup
- reviewed memory
- wrote or recommended targeted fixes
- verified the result

That is the pattern beginners should learn.

## When to use a buddy

Use a buddy agent when:

- an agent keeps making the same mistake
- an agent cannot explain its own setup clearly
- provider/model config seems wrong
- memory is full or messy
- one agent has filesystem access to another agent's config
- you do not trust the broken agent to repair itself
- you want a second opinion before changing important files

## When not to use a buddy

Do not use the buddy system for everything.

If one agent can answer a simple question, let it.

The buddy system is for repair, setup, review, and verification. It is not a reason to make every task complicated.

## Files in this section

- [When to Use a Buddy](when-to-use-a-buddy.md)
- [Cross-Agent Configuration](cross-agent-configuration.md)
- [Buddy Review Prompt](buddy-review-prompt.md)
- [Direct Inspection vs Prompting](direct-inspection-vs-prompting.md)

## Where to go next

Start with [When to Use a Buddy](when-to-use-a-buddy.md).
