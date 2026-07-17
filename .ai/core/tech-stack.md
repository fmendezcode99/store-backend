# Technology Stack

## Purpose

This document defines the technologies used throughout the Store Backend project.

Its purpose is to explain:

- What technologies are used.
- Why they were selected.
- What responsibility each technology has.
- When new technologies should be introduced.

Every technology included in this project should have a clear purpose.

Avoid adding technologies simply because they are popular.

---

# Technology Philosophy

The project follows these principles:

- Learn one technology at a time.
- Understand before adopting.
- Prefer stable technologies.
- Minimize dependencies.
- Build on previous knowledge.

New technologies should solve an actual problem.

---

# Programming Language

## Python

Purpose

The primary programming language for the backend.

Responsibilities

- Business logic
- Application logic
- Data processing
- API implementation
- Automation

Python is the foundation of the project.

---

# Database

## MySQL

Purpose

Primary relational database.

Responsibilities

- Data persistence
- Relationships
- Constraints
- Transactions

Database design should prioritize normalization and maintainability.

---

# Containerization

## Podman

Purpose

Container management.

Responsibilities

- Database containers
- Development environment
- Service isolation

Podman replaces Docker as the preferred container runtime.

---

# Version Control

## Git

Purpose

Source code version control.

Responsibilities

- History
- Branches
- Collaboration
- Change tracking

Git decisions always belong to the developer.

---

## GitHub

Purpose

Remote repository hosting.

Responsibilities

- Repository backup
- Collaboration
- Portfolio
- Future CI/CD

---

# Development Environment

## Fedora Linux

Purpose

Primary operating system.

Responsibilities

- Development
- Container management
- Local environment

---

## Visual Studio Code

Purpose

Primary development environment.

Responsibilities

- Editing
- Debugging
- Extensions
- Local AI integration

---

# Local AI

## Ollama

Purpose

Run local language models.

Responsibilities

- Code assistance
- Explanations
- Code review
- Documentation support

Local AI should assist development but never replace critical thinking.

---

## Language Models

Current models may evolve over time.

The assistant should use the model configured by the developer.

Model-specific behavior should never affect project architecture.

---

# Current Learning Stage

Current technologies in active use:

- Python
- MySQL
- Podman
- Git
- GitHub
- VS Code
- Ollama

These technologies form the foundation of the project.

---

# Planned Technologies

The following technologies will be introduced progressively.

## SQLAlchemy

Purpose

Object Relational Mapping (ORM)

Reason

Improve database abstraction while maintaining SQL knowledge.

---

## Alembic

Purpose

Database migrations.

Reason

Version database schema changes.

---

## FastAPI

Purpose

REST API framework.

Reason

Expose backend functionality through HTTP endpoints.

---

## Pydantic

Purpose

Data validation.

Reason

Validate requests and responses.

---

## Pytest

Purpose

Testing framework.

Reason

Automated testing.

---

## JWT

Purpose

Authentication.

Reason

Secure API endpoints.

---

## CI/CD

Purpose

Continuous Integration and Deployment.

Reason

Automate quality assurance and deployment.

---

# Dependency Policy

Before introducing any new technology, evaluate:

- Does it solve a real problem?
- Is it actively maintained?
- Is it widely adopted?
- Does it improve maintainability?
- Can the Standard Library solve the same problem?

Avoid unnecessary dependencies.

---

# Technology Evolution

The stack should evolve gradually.

Do not introduce multiple major technologies simultaneously.

Learning should remain progressive.

Each new technology should build upon previous knowledge.

---

# AI Expectations

The AI should:

- Recommend technologies only when appropriate.
- Explain why a technology is useful.
- Avoid unnecessary frameworks.
- Respect the current learning stage.
- Never introduce technologies outside the roadmap unless requested.

---

# Guiding Principle

Every technology in this repository should exist because it solves a problem—not because it follows a trend.
