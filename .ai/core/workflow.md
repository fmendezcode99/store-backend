# Development Workflow

## Purpose

This document describes the standard development workflow for the Store Backend project.

Its objective is to ensure consistent development practices, maintain documentation quality, and keep the AI Knowledge Base synchronized with significant project changes.

---

# Development Lifecycle

Every development session follows the same high-level workflow:

```text
Start Development Session
            │
            ▼
     Read manifest.yaml
            │
            ▼
Load Required Knowledge Base Documents
            │
            ▼
      Analyze the Task
            │
            ▼
    Implement the Solution
            │
            ▼
        Run Tests
            │
            ▼
Update Documentation (if needed)
            │
            ▼
Update AI Knowledge Base (if project knowledge changed)
            │
            ▼
      Review Changes
            │
            ▼
      Commit Changes
            │
            ▼
        Push Changes
```

---

# Session Initialization

Before implementing any change:

1. Read `manifest.yaml`.
2. Load only the documentation required for the current task.
3. Review existing architecture and coding standards.
4. Understand the requested change before writing code.

Avoid loading unnecessary documentation.

---

# Implementation Guidelines

During implementation:

- Respect the documented architecture.
- Follow the project's coding standards.
- Reuse existing patterns whenever possible.
- Prefer simple and maintainable solutions.
- Avoid duplicated code.
- Keep responsibilities clearly separated.

---

# Testing

Before completing a task:

- Verify that the implementation behaves as expected.
- Run the available tests.
- Fix issues before committing changes.

---

# Documentation Updates

Documentation should only be updated when the project's knowledge changes.

Examples include:

- Architectural changes.
- New design patterns.
- Technology stack updates.
- Workflow modifications.
- New project conventions.
- Significant technical decisions.

Routine feature implementation does not require updating the Knowledge Base.

---

# Git Workflow

A typical Git workflow is:

```text
git pull

↓

Implement changes

↓

Run tests

↓

Review changes

↓

git add

↓

git commit

↓

git push
```

Commit messages should follow the project's commit convention.

---

# AI Knowledge Base

The AI Knowledge Base is maintained alongside the software.

It should only be updated when project-specific knowledge evolves.

Examples include:

- New architectural decisions.
- New reusable patterns.
- Changes to development standards.
- Updates to the project workflow.
- Technology stack changes.

Normal feature development should not require modifications to the Knowledge Base.

---

# Guiding Principle

The development workflow should remain simple, consistent, and maintainable.

Documentation supports development, but it should never become an obstacle to delivering software.
