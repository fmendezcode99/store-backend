# Technology Stack

## Purpose

This document defines the technologies used throughout the Store Backend project.

Its purpose is to explain:

- What technologies are used.
- Why they were selected.
- What responsibility each technology has.
- How the technology stack is expected to evolve.

Every technology included in this project should have a clear purpose.

Avoid introducing technologies simply because they are popular.

---

# Technology Philosophy

Technology decisions follow these principles:

- Learn one technology at a time.
- Understand before adopting.
- Prefer stable and well-supported technologies.
- Minimize unnecessary dependencies.
- Build upon previously acquired knowledge.

Every new technology should solve a real problem.

---

# Current Stack

## Python

**Purpose**

Primary programming language.

**Responsibilities**

- Business logic
- Application logic
- API implementation
- Data processing
- Automation

Python is the foundation of the project.

---

## MySQL

**Purpose**

Primary relational database.

**Responsibilities**

- Data persistence
- Relationships
- Constraints
- Transactions

Database design should prioritize normalization, integrity, and maintainability.

---

## Podman

**Purpose**

Container runtime.

**Responsibilities**

- Database containers
- Development environment
- Service isolation

Podman is the project's standard container solution.

---

## Git

**Purpose**

Version control.

**Responsibilities**

- Source history
- Branch management
- Change tracking
- Collaboration

Git decisions remain under developer control.

---

## GitHub

**Purpose**

Remote repository hosting.

**Responsibilities**

- Repository hosting
- Collaboration
- Portfolio
- Future CI/CD integration

---

## Fedora Linux

**Purpose**

Primary development operating system.

**Responsibilities**

- Local development
- Container management
- Development environment

---

## Visual Studio Code

**Purpose**

Primary development environment.

**Responsibilities**

- Source editing
- Debugging
- Extensions
- Local AI integration

---

## Ollama

**Purpose**

Run local language models.

**Responsibilities**

- Code assistance
- Documentation support
- Code review
- Technical explanations

AI is a development assistant, not a replacement for engineering judgment.

---

# AI Models

Language models may change over time.

The project does not depend on any specific model.

Model selection should never influence:

- Project architecture
- Coding standards
- Technical decisions
- Software design

---

# Planned Technologies

The following technologies are expected to be introduced as the project evolves.

## FastAPI

**Purpose**

REST API framework.

**Reason**

Expose backend functionality through HTTP endpoints.

---

## Pydantic

**Purpose**

Data validation.

**Reason**

Validate requests and responses.

---

## SQLAlchemy

**Purpose**

Object Relational Mapping (ORM).

**Reason**

Improve database abstraction while preserving SQL knowledge.

---

## Alembic

**Purpose**

Database migrations.

**Reason**

Version and manage schema changes.

---

## Pytest

**Purpose**

Testing framework.

**Reason**

Automate testing and improve software quality.

---

## JWT

**Purpose**

Authentication.

**Reason**

Secure API endpoints.

---

## CI/CD

**Purpose**

Continuous Integration and Continuous Deployment.

**Reason**

Automate testing, quality assurance, and deployment.

---

# Technology Selection Criteria

Before introducing any new technology, evaluate:

- Does it solve a real problem?
- Is it actively maintained?
- Is it mature and widely adopted?
- Does it improve maintainability?
- Can the Python Standard Library solve the same problem?

Avoid unnecessary dependencies.

---

# Technology Evolution

The technology stack should evolve gradually.

Introduce new technologies only when they become necessary.

Each addition should integrate naturally with the existing architecture and development workflow.

---

# AI Expectations

AI assistants should:

- Respect the current technology stack.
- Recommend new technologies only when technically justified.
- Explain the advantages and trade-offs of new technologies.
- Avoid unnecessary frameworks and dependencies.
- Follow the project's technology roadmap whenever applicable.

---

# Guiding Principle

Every technology in this repository should exist because it solves a problem, improves maintainability, or supports the project's learning objectives—not because it follows a trend.
