# Mermaid Diagram Examples

This page demonstrates all major Mermaid diagram types. These render interactively in the browser.

## Flowchart

```mermaid
flowchart LR
    A[Start] --> B{Decision}
    B -->|Yes| C[Action 1]
    B -->|No| D[Action 2]
    C --> E[End]
    D --> E
```

## Sequence Diagram

```mermaid
sequenceDiagram
    participant Client
    participant Server
    participant DB

    Client->>Server: Request
    Server->>DB: Query
    DB-->>Server: Data
    Server-->>Client: Response
```

## State Diagram

```mermaid
stateDiagram-v2
    [*] --> Draft
    Draft --> InProgress: Start
    InProgress --> InReview: Submit
    InReview --> InProgress: Request Changes
    InReview --> Done: Approve
    Done --> [*]
```

## Entity Relationship

```mermaid
erDiagram
    USER ||--o{ PROJECT : owns
    PROJECT ||--o{ TASK : contains
    TASK }o--|| USER : assigned_to

    USER {
        string id
        string name
        string email
    }
    PROJECT {
        string id
        string name
        string owner_id
    }
    TASK {
        string id
        string title
        string status
    }
```

## Gantt Chart

```mermaid
gantt
    title Project Timeline
    dateFormat YYYY-MM-DD
    section Phase 1
    Design     :a1, 2026-01-01, 30d
    Develop    :a2, after a1, 45d
    section Phase 2
    Test       :b1, after a2, 20d
    Launch     :b2, after b1, 7d
```
