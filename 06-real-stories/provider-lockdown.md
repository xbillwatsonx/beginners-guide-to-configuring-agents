# The Provider Settings Needed a Lock

## People and agents in this story

- Bill Watson - human owner and operator
- Hannah - Hermes agent instance running on a separate Windows system

## The short version

Hannah's provider settings were not strict enough.

Some auxiliary tasks were allowed to choose a provider automatically. That meant paid routing could happen silently if a paid provider was available.

Bill did not want that.

The fix was to lock provider behavior down so paid providers could not be used without permission.

## What happened

Agent harnesses often support more than one model provider.

For example, one setup might use:

- a local or local-style endpoint for routine work
- a cloud model for heavier work
- a paid fallback provider for special cases

That flexibility is useful.

But it can also create surprise costs if the config says "auto" and the agent quietly chooses a paid option.

In Hannah's case, some provider settings were too loose.

The risk was not that she was doing something evil. The risk was that the configuration allowed the wrong thing by default.

## Why it mattered

Beginners often think cost control is handled by the model.

It is not.

Cost control is mostly handled by configuration and rules.

If a paid provider is available and the harness is allowed to choose automatically, the agent may not know that you wanted local or low-cost options first.

That is why provider rules should be explicit.

## The fix

The fix was to make provider routing intentional.

The working rule became:

```text
Do not use paid providers unless Bill explicitly approves it.
```

And the configuration was tightened so auxiliary tasks would not silently route to a paid fallback.

For a beginner, the exact config format will depend on the harness. The principle is what matters:

- know which providers are configured
- know which one is default
- know whether fallback routing exists
- know whether "auto" can choose paid models
- make paid usage require permission

## The beginner lesson

Do not leave provider routing vague.

Ask your agent:

```text
Audit my model/provider settings.

Do not change anything yet.

Tell me:
1. what providers are configured
2. which provider is default
3. whether any fallback provider exists
4. whether any setting could silently use a paid model
5. what rule would prevent surprise cost

Then propose the smallest safe change.
Wait for my approval before editing.
```

## A simple provider rule

Add a rule like this to your agent instructions:

```markdown
## Provider Cost Rule

Use local or approved low-cost models by default.

Do not use paid fallback providers, paid APIs, or provider auto-routing unless I explicitly approve it for the current task.

If a task seems to require a paid model, stop and explain:
1. why the paid model is needed
2. what it may cost
3. what cheaper option could be tried first
```

## What this story is really about

This was not just a billing issue.

It was a trust issue.

An agent becomes easier to trust when its cost behavior is predictable.

Provider settings should not surprise you.

They should match your rules.
