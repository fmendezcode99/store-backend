# Knowledge Base Index

## Purpose

This document is the navigation map for the Store Backend AI Knowledge Base.

Its purpose is to help AI assistants and developers quickly locate the appropriate documentation for any development task.

Every document has a single responsibility.

Consult only the documentation relevant to the current task.

---

# Knowledge Base Structure

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

# Root Documents

## README.md

### Purpose

Introduces the AI Knowledge Base.

Read this document first to understand:

- Purpose
- Design principles
- Directory structure
- Documentation philosophy

---

## assistant.md

### Purpose

Defines how AI assistants should collaborate on this project.

Consult this document for:

- AI behavior
- Communication rules
- Development philosophy
- Knowledge Base workflow
- Code generation rules
- Documentation policy
- Git policy
- Collaboration principles

---

## index.md

### Purpose

Acts as the navigation map for the Knowledge Base.

Use this document to locate project documentation efficiently.

---

## manifest.yaml

### Purpose

Contains structured metadata describing the Knowledge Base.

This file is intended for AI agents and tools that need to discover the documentation structure programmatically.

It defines:

- Knowledge Base metadata
- Entry points
- Directory structure
- Document locations
- Documentation language

---

# Core Documentation

## core/context.md

### Purpose

Provides a high-level overview of the project.

Consult this document when you need:

- Project overview
- Objectives
- Long-term vision
- Development philosophy

---

## core/project.md

### Purpose

Defines the project's identity.

Consult this document for:

- Vision
- Mission
- Scope
- Core values
- Success criteria

---

## core/project-status.md

### Purpose

Tracks the current state of the project.

Consult this document for:

- Current phase
- Active sprint
- Completed milestones
- Upcoming milestones
- Current priorities

---

## core/architecture.md

### Purpose

Defines the software architecture.

Consult this document for:

- Layer responsibilities
- Folder organization
- Dependency flow
- Architectural principles

---

## core/workflow.md

### Purpose

Defines the project's development workflow.

Consult this document for:

- Development lifecycle
- Branch strategy
- Code review process
- Definition of Done

---

## core/coding-standards.md

### Purpose

Defines coding conventions and development standards.

Consult this document for:

- Python conventions
- SQL conventions
- Naming conventions
- File organization
- Error handling
- Code quality

---

## core/tech-stack.md

### Purpose

Documents the technologies used in the project.

Consult this document for:

- Programming languages
- Frameworks
- Libraries
- Development tools
- Planned technologies

---

## core/glossary.md

### Purpose

Defines project terminology.

Consult this document for:

- Business concepts
- Technical terminology
- Naming consistency

---

# Specialized Documentation

## decisions/

Contains Architecture Decision Records (ADRs).

Consult this directory to understand:

- Why technical decisions were made
- Alternatives considered
- Trade-offs
- Consequences

---

## patterns/

Documents reusable architectural and design patterns implemented in the project.

Examples include:

- Repository Pattern
- Service Layer
- Dependency Injection
- Factory Pattern
- Unit of Work
- Clean Architecture

Consult this directory before implementing an existing pattern.

---

## prompts/

Contains reusable prompts for AI-assisted development.

Examples include:

- Code Review
- SQL Review
- Debugging
- Testing
- Documentation
- Refactoring
- Architecture Review

Consult this directory when performing specialized AI workflows.

---

## templates/

Contains reusable templates used to maintain consistency across the Knowledge Base.

Current templates:

- adr-template.md
- core-template.md
- pattern-template.md
- prompt-template.md
- readme-template.md

Use these templates whenever creating new documentation to ensure consistency across the project.

---

# Document Selection Guide

| If you need to...                                      | Read                     |
| ------------------------------------------------------ | ------------------------ |
| Understand the Knowledge Base                          | README.md                |
| Understand AI behavior                                 | assistant.md             |
| Locate documentation                                   | index.md                 |
| Discover the Knowledge Base structure programmatically | manifest.yaml            |
| Understand the project                                 | core/context.md          |
| Understand the project's identity                      | core/project.md          |
| Check project progress                                 | core/project-status.md   |
| Understand the architecture                            | core/architecture.md     |
| Follow coding standards                                | core/coding-standards.md |
| Follow the development workflow                        | core/workflow.md         |
| Understand the technology stack                        | core/tech-stack.md       |
| Understand terminology                                 | core/glossary.md         |
| Understand technical decisions                         | decisions/               |
| Implement existing patterns                            | patterns/                |
| Execute specialized AI tasks                           | prompts/                 |
| Create new documentation                               | templates/               |

---

# Navigation Rules

Before consulting documentation:

1. Identify the task.
2. Open the appropriate document using this index.
3. Read only the documentation required for the task.
4. Avoid consulting unrelated documents.
5. If multiple documents apply, follow the priority defined in `assistant.md`.

---

# Documentation Principles

Every document should:

- Have a single responsibility.
- Avoid duplicated information.
- Remain easy to maintain.
- Stay synchronized with the implementation.
- Be updated as the project evolves.
- Follow the established templates whenever applicable.

---

# Guiding Principle

The Knowledge Base is the single source of truth for project-specific knowledge.

Use the smallest amount of documentation necessary to complete the current task while maintaining consistency across the entire project.
