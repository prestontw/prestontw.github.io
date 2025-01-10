---
title: "Introducing Bazel to a Rust Project"
description: "A guided tour with missteps of integrating Bazel into a Rust project"
pubDate: "Jun 19 2022"
---

Before I left my previous company, a large and frequent complaint was how long our CI (Continus Integration) took to complete.
The fastest I remember it taking was 40 minutes.
(It also had an unfortunate amount of flakey tests, which is a separate issue...)
We were able to separate our CI into front-end and back-end pipelines, but we had many integration tests that spanned both areas.

[Bazel](https://bazel.build/) came up as an idea to potentially speed up our CI times by caching and reusing artifacts.
I had heard about Bazel in browsing the Rust sub-reddit as well.
So, I wanted to see how easy it would be to integrate Bazel into an existing project and whether it was worth including in my personal projects.
The biggest issue that I ran into was that the initial directory structure was very important---the tooling assumed that directories were laid out in a certain way.
I decided to write up my experiences, with some of the hardships and uncertainties included.
Too many blogs and guides skip over the difficult portions---I have kept some of them in but left out some initial churn:

<https://prestontw.github.io/bazel-rust-guided-experiment/>

The source is available at:

<https://github.com/prestontw/bazel-rust-guided-experiment>

P.S.: Bazel might run afoul of Matklad's [O(1) build file rule](<https://matklad.github.io/2023/12/31/O(1)-build-file.html>).
This is necessary since Bazel has to be aware of tests and their dependencies to know whether their results are up to date, but it's just a little more manual effort or initial automated tooling setup than I'm used to.
