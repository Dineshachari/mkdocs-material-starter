# Components

## Admonitions

!!! note "Default Note"
    This is a standard note admonition.

!!! warning "Important Warning"
    Pay attention to this warning.

!!! tip "Pro Tip"
    Use admonitions to highlight important information.

??? info "Click to expand"
    This is a collapsible admonition. Click to reveal.

## Grid Cards with Icons

<div class="grid cards" markdown>

- :material-shield-check:{ .lg .middle } **Security**

    ---

    Built-in authentication and authorization.

- :material-chart-bar:{ .lg .middle } **Analytics**

    ---

    Real-time dashboards and metrics.

- :material-cog:{ .lg .middle } **Configuration**

    ---

    Flexible YAML-based configuration.

- :material-api:{ .lg .middle } **API**

    ---

    RESTful API with OpenAPI spec.

</div>

## Tabbed Content

=== "JavaScript"

    ```javascript
    const greeting = "Hello, world!";
    console.log(greeting);
    ```

=== "Python"

    ```python
    greeting = "Hello, world!"
    print(greeting)
    ```

=== "Go"

    ```go
    fmt.Println("Hello, world!")
    ```

## Code Blocks

With line numbers and highlighting:

```python hl_lines="3 4"
def fibonacci(n: int) -> list[int]:
    """Generate first n Fibonacci numbers."""
    a, b = 0, 1          # highlight
    result = [a, b]      # highlight
    for _ in range(n - 2):
        a, b = b, a + b
        result.append(b)
    return result
```

## Tables

| Feature | Status | Notes |
|---------|:------:|-------|
| Mermaid | :white_check_mark: | All diagram types |
| Icons | :white_check_mark: | Material + Font Awesome |
| Grids | :white_check_mark: | With icons and markdown |
| Tabs | :white_check_mark: | Synced across page |
| Admonitions | :white_check_mark: | Collapsible |
