---
title: "Building a Rust service with Nix"
link: "https://fasterthanli.me/series/building-a-rust-service-with-nix"
author: "fasterthanlime"
priority: 1
---

The article series that finally pushed me to try Nix for my local development.
If that interests you, start with [9. Learning Nix from the bottom up](https://fasterthanli.me/series/building-a-rust-service-with-nix/part-9),
but I think it's worth it to read the series in order.
I don't yet generate Docker images through Nix (the one time I tried I ran into deployment issues),
but using Nix is great for local development! (Except for when I'm a version behind on MacOS
and it seems like the [rest of the Nix world has moved forward](https://github.com/prestontw/nix_fails_to_find_git).)

The one difference I would point out is I prefer using `flakey-profile` to install general (ie, not project specific) tools:

<https://github.com/prestontw/my-flakey-profile/blob/main/flake.nix#L20-L56>

This comes from [Flakes aren't real and cannot hurt you: a guide to using Nix flakes the non-flake way](https://jade.fyi/blog/flakes-arent-real/) by Jade.
