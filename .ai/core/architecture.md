# Software Architecture

## Purpose

This document describes the software architecture of the Store Backend project.

Its objective is to ensure that every new feature follows the same architectural principles and that the project evolves consistently over time.

Architecture should support maintainability, scalability, and readability.

---

# Architecture Philosophy

The project follows a layered architecture.

Each layer has a single responsibility.

Business rules should remain independent from frameworks and external technologies whenever possible.

The architecture should evolve gradually as new concepts are learned.

---

# Design Principles

The architecture follows these principles:

- Single Responsibility Principle (SRP)
- Separation of Concerns (SoC)
- Dependency Inversion (when appropriate)
- High cohesion
- Low coupling
- Explicit dependencies
- Incremental evolution

Avoid unnecessary complexity.

---

# Current Architecture

Current project structure:

```text
app/
docs/
sql/
tests/
.ai/
.vscode/
```

The current architecture is intentionally simple.

As the project grows, responsibilities will be separated into dedicated modules.

---

# Target Architecture

The long-term goal is to organize the application as follows:

```text
app/
│
├── database/
│
├── models/
│
├── repositories/
│
├── services/
│
├── schemas/
│
├── routes/
│
├── utils/
│
└── config/
```

Each directory has one primary responsibility.

---

# Layer Responsibilities

## database/

Responsible for:

- Database connection
- Session management
- Configuration
- Migrations

Business logic does not belong here.

---

## models/

Represents business entities.

Models define the application's data structures.

Models should not contain database access logic.

---

## repositories/

Responsible for data persistence.

Responsibilities include:

- Queries
- Inserts
- Updates
- Deletes

Repositories communicate with the database.

Business rules should remain outside this layer.

---

## services/

Contains business logic.

Responsibilities include:

- Validation
- Business rules
- Orchestration
- Coordination between repositories

Services should not know implementation details of the database.

---

## schemas/

Defines data validation and serialization.

Future responsibilities include:

- Request validation
- Response serialization
- Data transfer objects

---

## routes/

Responsible for HTTP endpoints.

Routes should:

- Receive requests
- Validate input
- Call services
- Return responses

Business logic should never be implemented inside routes.

---

## utils/

Shared utilities used across the application.

Examples:

- Date helpers
- Formatting
- Common utilities

Avoid placing business logic here.

---

## config/

Application configuration.

Examples:

- Environment variables
- Database settings
- Application settings

Configuration should remain centralized.

---

# Dependency Direction

Dependencies should always flow downward.

```text
Routes
    ↓
Services
    ↓
Repositories
    ↓
Database
```

Never reverse this dependency.

Repositories should not call services.

Models should not depend on routes.

---

# Business Logic

Business rules belong inside the service layer.

Avoid business logic in:

- routes
- repositories
- models
- utilities

Business logic should remain centralized.

---

# Database Access

Only repositories should interact directly with the database.

Avoid SQL inside:

- services
- routes
- utilities

Centralizing database access improves maintainability.

---

# Future Patterns

As the project evolves, the following patterns may be adopted:

- Repository Pattern
- Service Layer
- Dependency Injection
- Factory Pattern
- Unit of Work (if necessary)

Patterns should only be introduced when they solve an actual problem.

Avoid implementing patterns prematurely.

---

# Scalability

The architecture should support:

- Additional modules
- Authentication
- APIs
- Testing
- Multiple databases
- New services

Growth should not require rewriting the entire project.

---

# AI Expectations

The AI should:

- Respect the existing architecture.
- Suggest improvements incrementally.
- Avoid unnecessary restructuring.
- Explain architectural decisions.
- Keep responsibilities separated.

Architecture changes should always have technical justification.

---

# Guiding Principle

A developer should be able to understand where new code belongs without guessing.

A clear architecture reduces complexity and improves long-term maintainability.
