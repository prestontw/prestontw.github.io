---
title: "Ted Kaminski's Archive"
link: "https://www.tedinski.com/archive/"
author: "Ted Kaminski"
priority: 0.1
---

I think I might have heard of this archive initially from <https://matklad.github.io/2023/08/06/fantastic-learning-resources.html#Software-Architecture>.

I especially like <https://www.tedinski.com/2018/08/28/using-data-to-mutate-state.html>.
It seems to be the article I keep thinking about, especially when implementing or trying to debug a complex feature at work.
As an example at my job, families fill out a form which sends a webhook to our system.
Our system processes it to create a set of related records across internal and external repositories.
It's tough to tell which resources and which systems will get affected except by tracing through the code.
This makes me think it would be really nice to have a bill of resources as the main output of this process.
