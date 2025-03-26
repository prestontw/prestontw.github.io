---
title: "Web Servers in Rust"
description: "Articles around writing web servers in Rust"
pubDate: "Feb 26 2025"
---

People, including me, really like writing Rust, so Rust has escaped and set up shop in domains more in the realm of application programming than systems programming.
This does have some rough edges and pain points.
Here are some articles around recommendations on how to use Rust in the main context I have used it in,
which is web servers.

## [Local Async Executors and Why They Should be the Default](https://maciej.codes/2022-06-09-local-async.html) by Maciej

I started using Rust in the context of web servers before `async/await`, which is pretty wild to think about.
(Shout out to early versions of Rocket!)
To avoid wrapping data in `Arc`s so that work can be stolen across threads, using local async executors is an option.

## [Some useful types for database-using Rust web apps](https://boinkor.net/2024/04/some-useful-types-for-database-using-rust-web-apps) by Andreas Fuchs

This article provides some cool methods to get new vs saved in the database versions of types.
Though I haven't figured out a way to get it to work with Diesel, though...

## [Rust web frameworks have subpar error reporting](https://www.lpalmieri.com/posts/rust-web-frameworks-have-subpar-error-reporting/) by Luca Palmieri

Some goals with error reporting and how the two most popular web servers in Rust fall short of them.

## [When "letting it crash" is not enough](https://flawless.dev/essays/when-letting-it-crash-is-not-enough/) by Bernard Kolobara

Adjacently related to Rust, but maybe a nice utility technology to write web servers in a fault-tolerant way.

## [A Mirror for Rust: Compile-Time Reflection Report](https://soasis.org/posts/a-mirror-for-rust-a-plan-for-generic-compile-time-introspection-in-rust/) by ThePhD

Historical record of the way the world could have been.
Initially not super related to web servers, but this could have reduced compile time and dependencies by moving a lot of Serde's functionality into the compiler.

## [All you need is data and functions](https://mckayla.blog/posts/all-you-need-is-data-and-functions.html) by Kayla

I've been playing around with Gleam for Advent of Code (hopefully more on that later),
and I'm interested in playing around with it for writing web servers too.
I wanted to hold onto this article for why traits/interfaces aren't really required.
