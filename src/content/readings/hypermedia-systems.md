---
title: "Hypermedia Systems"
link: "https://hypermedia.systems/"
author: "Carson Gross, Adam Stepinski, Deniz Akşimşek"
priority: 4
---

The HTMX book! I had only ever used React apps for front-end before, so this whole exploration was eye-opening.

Related readings:

- <https://max.engineer/server-informed-ui>,
- <https://htmx.org/essays/splitting-your-apis/>, and
- <https://htmx.org/essays/locality-of-behaviour/>.

It's not all sunshine and rainbows, though.
While working through this book, I found HTMX to be stringly-typed and ran into some issues re-creating intermediary screens.
React Andy's like to say that `view = f(state)`, but with HTMX I found the expression to be more like

```
view = f(initial server state) + backend snippet substitution + backend snippet substitution + ...
```

It wasn't so bad that I couldn't finish the book, though.
I worked through the non-mobile sections of this book in <https://github.com/prestontw/rust-htmx-contacts-app>.
However, I did have to add a fair amount of infrastructure to make working in HTMX less stringly-typed for my taste.
I created my first [declarative Rust macro](https://github.com/prestontw/rust-htmx-contacts-app/blob/61a42bfc3ba3f483548c59063aa18ba91bfe7fa9/src/hx_triggers.rs) as part of this project which would generate `id` names for using actions in forms
as well as generate deserialization header methods so I could easily tell whether a request came from an interaction on the page (like in  
<https://github.com/prestontw/rust-htmx-contacts-app/blob/61a42bfc3ba3f483548c59063aa18ba91bfe7fa9/src/html_views.rs#L143-L148>), in which case we would only need to send down an HTML snippet instead of the whole page.

These concerns were mirrored in <https://www.youtube.com/watch?v=mt1ZCai1G-I> by Web Dev Cody.
He calls it "no type safety" instead of "stringly typed", and mentions the substitution issue in <https://youtu.be/mt1ZCai1G-I?si=xUl5SrsfXPuY3YpN&t=1015>.
I was thinking of combining HTMX and Alpine.js to try to get closer to the `view = f(state)` ideal,
but [Datastar's `MergeSignals` functionality](https://data-star.dev/guide/getting_started#backend-setup) might be what I'm looking for without as much manual connection...
Eventually, I want to write a blog post on this.
