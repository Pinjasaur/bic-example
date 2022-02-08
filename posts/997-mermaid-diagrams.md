# Using Mermaid Diagrams

[Mermaid] diagrams^[Also, footnotes are a thing. :)] rendered client-side in your static blog.

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```

And here's another, to prove enumeration is a thing.

```mermaid
sequenceDiagram
    autonumber
    Alice->>John: Hello John, how are you?
    loop Healthcheck
        John->>John: Fight against hypochondria
    end
    Note right of John: Rational thoughts!
    John-->>Alice: Great!
    John->>Bob: How about you?
    Bob-->>John: Jolly good!
```

These are taken from the GitHub announcement: <https://github.com/github/roadmap/issues/372>

[Mermaid]: https://github.com/mermaid-js/mermaid
