# Coding Standards

## Purpose

This document defines the coding standards for the Store Backend project.

The objective is to produce code that is:

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

Use:

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

Functions should describe an action.

Examples:

```python
create_user()
find_product()
calculate_total()
validate_email()
```

Avoid:

```python
data()
process()
execute()
run()
```

Use verbs.

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

---

## Constants

Use uppercase.

```python
MAX_RETRIES = 3
DEFAULT_PORT = 3306
API_VERSION = "v1"
```

---

## Modules

Use lowercase.

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

Explicit types improve readability and tooling.

---

# Functions

Functions should:

- Have one responsibility.
- Be easy to understand.
- Return predictable values.
- Avoid side effects when possible.

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

Classes should represent a single concept.

Avoid classes with multiple unrelated responsibilities.

Prefer composition over inheritance when appropriate.

---

# Comments

Write comments only when necessary.

Do not explain what obvious code does.

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

Public classes and functions should include docstrings when they provide reusable behavior.

Example:

```python
def calculate_total(items: list[Item]) -> Decimal:
    """Calculate the total price of all items."""
```

---

# Imports

Use the following order:

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

Catch only exceptions you can handle.

---

# Logging

Prefer logging over print statements.

Temporary print statements are acceptable during development but should be removed before considering the work complete.

Future logging should use Python's logging module.

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

Avoid one-line SQL queries.

---

# Database Naming

Tables:

Plural nouns.

Examples:

- users
- products
- orders

Columns:

snake_case

Examples:

- created_at
- updated_at
- first_name

Primary keys:

id

Foreign keys:

user_id
product_id

---

# File Organization

One responsibility per file.

One primary class per file when appropriate.

Avoid large files.

Split files before they become difficult to navigate.

---

# Code Organization

Prefer this order inside modules:

1. Constants
2. Classes
3. Public functions
4. Private helper functions

Maintain a predictable structure.

---

# Dependencies

Before introducing a dependency:

Ask:

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

Do not focus only on whether the code works.

---

# Refactoring

Refactor only when it clearly improves:

- readability
- maintainability
- architecture

Avoid refactoring unrelated code while implementing a feature.

---

# AI Expectations

The AI should:

- Follow these standards in every code suggestion.
- Explain when a standard is intentionally not followed.
- Recommend improvements respectfully.
- Prioritize readability.
- Respect the project's existing architecture.

---

# Guiding Principle

Write code that another developer can understand quickly without additional explanation.

Readable code is professional code.
