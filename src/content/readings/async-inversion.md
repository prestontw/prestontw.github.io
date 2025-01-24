---
title: "How to think about `async`/`await` in Rust"
link: "https://cliffle.com/blog/async-inversion/"
author: "Cliff L. Biffle"
priority: 10.3
---

I want to write state machines easily, and this article pushes back against my idea that I should prefer state machines over async code.

> From my perspective, this is the fundamental promise of async fn: easier, composable, explicit state machines.

I am thinking about these state machines in the context of a turn-based card game.
Each turn can be made up of several different decisions that the player needs to make.
For a while, I was wondering if I could make a dummy `Waker` to pass data to the state machine when it awakens,
but while reading this article, I realized that I could just use channels.

Separately, since I will need to serialize the game state, I don't think I can get away from writing the state machine by hand,
since Rust generates the state machine underpinning `async` functions with an anonymous (or hidden) type.
Thinking about this some more, maybe I could just manually implement `Future` for this state machine?
