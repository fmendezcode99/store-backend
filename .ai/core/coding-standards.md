# Coding Standards

## Purpose

This document defines the coding standards for the Store Backend project.

Its objective is to produce code that is:

- Readable
- Consistent
- Maintainable
- Testable
- Easy to understand

Consistency is more important than personal preference.

---

# General Principles

Always prefer:

- Readability over cleverness.
- Explicit code over implicit behavior.
- Simplicity over unnecessary abstraction.
- Small improvements over large rewrites.
- Composition over unnecessary inheritance.
- Reuse over duplication.

Follow these principles whenever applicable:

- KISS (Keep It Simple, Stupid)
- DRY (Don't Repeat Yourself)
- YAGNI (You Aren't Gonna Need It)

Code should be written for humans first and computers second.

---

# Python Style

Follow:

- PEP 8
- PEP 257 (Docstrings)
- PEP 484 (Type Hints)

When multiple valid solutions exist, prefer the one that is easier to read.

---

# Naming Conventions

## Variables

Use descriptive snake_case names.

Good:

```python
user_name
product_price
total_amount
```

Avoid:

```python
x
tmp
value1
```

Names should clearly express intent.

---

## Functions

Function names should describe an action.

Good:

```python
create_user()
find_product()
calculate_total()
validate_email()
```

Avoid generic names such as:

```python
data()
process()
execute()
run()
```

Use verbs whenever possible.

---

## Classes

Use PascalCase.

Examples:

```python
User
Product
DatabaseConnection
ShoppingCart
```

Each class should represent a single concept.

---

## Constants

Use uppercase with underscores.

```python
MAX_RETRIES = 3
DEFAULT_PORT = 3306
API_VERSION = "v1"
```

---

## Modules

Use lowercase snake_case.

Examples:

```text
database.py
user_service.py
product_repository.py
```

---

# Type Hints

Type hints are required.

Good:

```python
def create_user(name: str, age: int) -> User:
```

Avoid:

```python
def create_user(name, age):
```

Explicit types improve readability, tooling, and static analysis.

---

# Functions

Functions should:

- Have one responsibility.
- Be easy to understand.
- Return predictable values.
- Minimize side effects whenever possible.
- Remain reasonably small.

Prefer:

```python
calculate_total()
```

instead of

```python
calculate_total_and_save_to_database()
```

---

# Classes

Classes should:

- Represent one concept.
- Have one primary responsibility.
- Hide implementation details.
- Collaborate through well-defined interfaces.

Prefer composition over inheritance whenever appropriate.

---

# Comments

Write comments only when they add value.

Avoid explaining obvious code.

Bad:

```python
# Increment x
x += 1
```

Good:

```python
# Retry because the external API may temporarily reject requests.
```

Explain _why_, not _what_.

---

# Docstrings

Public modules, classes, and reusable functions should include concise docstrings.

Example:

```python
def calculate_total(items: list[Item]) -> Decimal:
    """Calculate the total price of all items."""
```

Docstrings should describe purpose, not implementation details.

---

# Imports

Organize imports in the following order:

1. Standard Library
2. Third-party packages
3. Local imports

Example:

```python
from pathlib import Path

import mysql.connector

from app.database.connection import DatabaseConnection
```

Avoid wildcard imports.

Never use:

```python
from module import *
```

---

# Error Handling

Handle exceptions intentionally.

Good:

```python
try:
    ...
except ValueError:
    ...
```

Avoid:

```python
except:
```

Catch only exceptions that can be handled meaningfully.

---

# Logging

Prefer logging over print statements.

Temporary print statements are acceptable during development but should be removed before completing the task.

Use Python's `logging` module for application logging.

---

# SQL Standards

SQL should be:

- Readable
- Explicit
- Properly formatted

Prefer:

```sql
SELECT
    id,
    name
FROM products
WHERE active = TRUE;
```

Avoid one-line SQL queries whenever readability suffers.

---

# Database Naming

Tables:

Use plural nouns.

Examples:

- users
- products
- orders

Columns:

Use snake_case.

Examples:

- created_at
- updated_at
- first_name

Primary keys:

```text
id
```

Foreign keys:

```text
user_id
product_id
```

---

# File Organization

Each file should have one primary responsibility.

When appropriate:

- One primary class per file.
- Related helper functions may remain together.

Split files before they become difficult to navigate.

---

# Code Organization

Prefer the following order inside modules:

1. Constants
2. Classes
3. Public functions
4. Private helper functions

Maintain a predictable structure.

---

# Dependencies

Before introducing a dependency, ask:

- Is it necessary?
- Can the standard library solve this?
- Does it simplify the project?
- Is it actively maintained?

Avoid unnecessary dependencies.

---

# Code Reviews

Review code for:

- Correctness
- Readability
- Naming
- Type hints
- Error handling
- Maintainability
- Simplicity
- Architectural consistency

Code quality is more important than simply making the code work.

---

# Refactoring

Refactor only when it clearly improves:

- Readability
- Maintainability
- Architecture

Avoid refactoring unrelated code while implementing a feature.

---

# AI Expectations

AI assistants should:

- Follow these standards in every code suggestion.
- Respect the documented architecture.
- Explain intentional deviations from these standards.
- Recommend improvements incrementally.
- Prioritize readability and maintainability.

---

# Guiding Principle

Write code that another developer can understand quickly without additional explanation.

Readable, consistent, and maintainable code is professional code.
