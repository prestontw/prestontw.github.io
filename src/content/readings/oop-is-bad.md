---
title: "Object-Oriented Programming is Bad"
link: "https://www.youtube.com/watch?v=QM1iUe6IofM"
author: "Brian Will"
priority: 30
---

This video boils down to the following argument:

- OOP was created as a way to manage shared mutable state
- It does this by segregating state into separate objects (encapsulation)
- If you really want to reduce shared mutable state, though, you need to organize your call/composition graph into a tree
- This is painful to do in the face of changing requirements and dependencies and large scale development
- Therefore, use procedural code instead.

I strongly agree with the video's point about parameterizing dependencies and state.
Some other resources in a similar vein:

- <https://www.destroyallsoftware.com/talks/boundaries>
- <https://www.youtube.com/watch?v=J1f5b4vcxCQ>
- <https://www.tedinski.com/2018/08/28/using-data-to-mutate-state.html>
