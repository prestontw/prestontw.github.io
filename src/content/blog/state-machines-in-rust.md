---
title: "State Machines in Rust"
description: "Articles around async/await, the typestate pattern, and state machines in Rust"
pubDate: "Feb 24 2025"
---

Normally, "straight-line" Rust is more than enough to write robust, resilient systems.
There are cases, though, where you might want to model a computation as a state machine for ease of understanding and possible wins for testing.
I'm thinking about this in two contexts:

1. A multiplayer, turn-based game where we need to wait for player selections before the game can progress, and
2. Application/form processing in my job, where we need to generate a bunch of information based on the form in systems we do and don't control.

Here is a loose collection of articles I've been reading around this theme.

## [Coroutines and effects](https://without.boats/blog/coroutines-and-effects/) by without.boats

I want to be able to write state machines easily, and coroutines seem like a great way to do this
(potentially because compilers translate coroutines down to state machines?).
This article goes over a difference between coroutines and effects (and effect handlers) that without.boats observed.

## [The Typestate Pattern in Rust](https://cliffle.com/blog/rust-typestate/) by Cliff L. Biffle

The typestate pattern is a type-safe pattern to help with manually encoding state machines.
This is an introductory article that covers the Typestate pattern in Rust.
The [state type parameter](https://cliffle.com/blog/rust-typestate#variation-state-type-parameter) section is very handy.

## [How to think about `async`/`await` in Rust](https://cliffle.com/blog/async-inversion/) by Cliff L. Biffle

This article pushes back against my idea that I should prefer state machines over async code.

> From my perspective, this is the fundamental promise of async fn: easier, composable, explicit state machines.

I am thinking about these state machines in the context of a turn-based card game.
Each turn can be made up of several different decisions that the player needs to make.
For a while, I was wondering if I could make a dummy `Waker` to pass data to the state machine when it awakens,
but while reading this article, I realized that I could just use channels.

Separately, since I will need to serialize the game state, I don't think I can get away from writing the state machine by hand,
since Rust generates the state machine underpinning `async` functions with an anonymous (or hidden) type.
Thinking about this some more, maybe I could just manually implement `Future` for this state machine?

## [sans-IO: The secret to effective Rust for network services](https://www.firezone.dev/blog/sans-io) by Thomas Eizinger

Seems super interesting. Dependency inversion + state machines lead to easy to test software.
`async/await` in Rust already compiles down to state machines, though.
I want to play around with these two different approaches and see if one is easier to test,
one is easier to write, etc.
Maybe this is more applicable if one is writing a library?
