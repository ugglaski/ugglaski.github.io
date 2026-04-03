---
layout: post
title: "Przykladowy diagram Mermaid"
date: 2026-04-03 20:39:13 +/-0000
categories: [blog]
tags: [mermaid, diagram]
---
To jest przykładowy post z diagramem Mermaid.

Diagram przedstawia prosty flowchart procesu tworzenia posta.

```mermaid
flowchart TD
    A[Start] --> B{Nowy pomysł?}
    B -->|Tak| C[Napisz post]
    B -->|Nie| D[Koniec]
    C --> E[Edytuj w Markdown]
    E --> F[Commit i push]
    F --> G[GitHub Pages deploy]
    G --> H[Post opublikowany]
    H --> D
```

Aby diagram był widoczny, strona musi mieć włączone Mermaid.js. Można dodać script do layoutu lub użyć pluginu Jekyll.

