# Architecture Overview

## System Flow

```mermaid
flowchart TB
    User([User])
    Frontend[Frontend App]
    API[API Server]
    DB[(Database)]
    Cache[(Cache)]

    User --> Frontend
    Frontend --> API
    API --> DB
    API --> Cache
    Cache -.-> API
```

## Request Lifecycle

```mermaid
sequenceDiagram
    actor User
    participant FE as Frontend
    participant API as API Server
    participant DB as Database

    User->>FE: Action
    FE->>API: HTTP Request
    API->>DB: Query
    DB-->>API: Result
    API-->>FE: Response
    FE-->>User: Update UI
```

## Key Decisions

| Decision | Choice | Rationale |
|----------|--------|-----------|
| Database | PostgreSQL | Reliability, JSON support |
| Cache | Redis | Speed, pub/sub |
| API Style | REST | Simplicity, tooling |
