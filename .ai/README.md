# Store Backend AI Knowledge Base

## Purpose

This directory contains the AI Knowledge Base for the **Store Backend** project.

It provides structured, project-specific documentation that enables AI assistants and developers to work consistently throughout the project's lifecycle.

The Knowledge Base evolves alongside the project while remaining organized, maintainable, and easy to navigate.

---

# Objectives

The AI Knowledge Base aims to:

- Provide consistent project context across development sessions.
- Reduce repeated explanations and duplicated information.
- Preserve architectural and technical knowledge.
- Promote consistent development practices.
- Improve long-term maintainability.
- Support AI-assisted software development through structured documentation.

---

# Design Principles

This Knowledge Base follows these principles:

- Single Responsibility Principle (SRP)
- Single Source of Truth
- No duplicated information
- Modular documentation
- Incremental evolution
- Clear ownership of information

Every document should answer one specific question and have a clearly defined responsibility.

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

Files include:

- README
- index
- assistant
- manifest

---

## Core

Contains the permanent documentation that defines the project.

Examples include:

- Project context
- Architecture
- Workflow
- Coding standards
- Technology stack
- Project status
- Glossary

This documentation represents the project's long-term knowledge.

---

## Decisions

Contains technical decisions and project conventions that AI assistants should follow during development.

Examples include:

- Folder organization
- Dependency management
- Naming conventions

These documents explain how the project is organized and why those conventions exist.

---

## Patterns

Documents reusable architectural and design patterns implemented throughout the project.

Examples include:

- Repository Pattern
- Service Layer
- Clean Architecture

Patterns should be reused instead of creating new implementations whenever applicable.

---

## Prompts

Contains reusable prompts that support common AI-assisted development tasks.

Examples include:

- Code reviews
- SQL reviews
- Documentation generation
- Architecture analysis
- Learning sessions

Prompts should remain generic enough to be reused across multiple development sessions.

---

## Templates

Provides standardized templates used to create new documentation while maintaining consistency across the Knowledge Base.

---

# How AI Assistants Should Use This Knowledge Base

Before generating code or making architectural decisions, AI assistants should:

1. Read `manifest.yaml`.
2. Load the required documents specified in the manifest.
3. Use `core/` as the primary source of project context.
4. Consult `decisions/` before suggesting structural changes.
5. Reuse documented patterns whenever possible.
6. Avoid duplicating existing documentation or business logic.
7. Update the Knowledge Base whenever significant project changes occur.

---

# Maintenance

The Knowledge Base should evolve together with the software.

Whenever the project changes:

- Update existing documentation whenever possible.
- Avoid duplicated information.
- Create new documents only when they have a clear responsibility.
- Keep documentation concise and maintainable.
- Remove obsolete information when it is no longer relevant.

Documentation maintenance is considered part of the development process.

---

# Guiding Principle

The AI Knowledge Base is the single source of truth for project-specific knowledge.

Whenever documentation conflicts with previous conversations, assumptions, or generated context, the Knowledge Base takes precedence.

All AI-assisted development should rely on this documentation to ensure consistency, maintainability, and alignment with the project's architecture.
