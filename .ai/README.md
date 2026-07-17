# Store Backend AI Knowledge Base

## Purpose

This directory contains the AI Knowledge Base for the Store Backend project.

It provides structured, project-specific documentation that helps AI assistants and developers work consistently throughout the project's lifecycle.

The Knowledge Base is designed to evolve alongside the project while remaining organized, maintainable, and easy to navigate.

---

# Design Principles

This Knowledge Base follows these principles:

- Single Responsibility Principle (SRP)
- No duplicated information
- Modular documentation
- Incremental evolution
- Clear ownership of information

Every document should answer one specific question.

---

# Directory Structure

```text
.ai/
│
├── README.md
├── assistant.md
├── index.md
├── manifest.yaml
│
├── core/
│   ├── architecture.md
│   ├── coding-standards.md
│   ├── context.md
│   ├── glossary.md
│   ├── project.md
│   ├── project-status.md
│   ├── tech-stack.md
│   └── workflow.md
│
├── decisions/
│   ├── dependencies.md
│   ├── folder-structure.md
│   └── naming.md
│
├── patterns/
│   ├── clean-architecture.md
│   ├── repository-pattern.md
│   └── service-layer.md
│
├── prompts/
│   ├── architecture-review.md
│   ├── code-review.md
│   ├── documentation.md
│   ├── learning-mode.md
│   └── sql-review.md
│
└── templates/
    ├── adr-template.md
    ├── core-template.md
    ├── pattern-template.md
    ├── prompt-template.md
    └── readme-template.md
```

---

# Documentation Layers

## Root

Contains the documentation required to understand and navigate the Knowledge Base.

- README
- index
- assistant

---

## Core

Contains the permanent project documentation.

Examples:

- Architecture
- Workflow
- Coding Standards
- Technology Stack

---

## Decisions

Contains Architecture Decision Records (ADRs).

Documents explain:

- Why decisions were made
- Alternatives considered
- Consequences

---

## Patterns

Documents architectural and design patterns implemented in the project.

---

## Prompts

Contains reusable prompts for AI-assisted development.

---

# Maintenance

Whenever the project evolves:

- Update existing documentation.
- Avoid duplicated information.
- Create new documents only when they have a clear responsibility.

Documentation should evolve together with the software.

---

# Guiding Principle

The Knowledge Base is the single source of truth for project-specific knowledge.
