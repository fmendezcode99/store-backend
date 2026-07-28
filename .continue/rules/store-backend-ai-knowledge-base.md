---
name: Store Backend AI Knowledge Base
description: Automatically use the project's AI Knowledge Base for every development session.
alwaysApply: true
---

# Store Backend AI Knowledge Base

Before making any changes to the project:

1. Read `.ai/manifest.yaml`.
2. Use the manifest as the single entry point to the AI Knowledge Base.
3. Load only the documentation required for the current task.
4. Follow the documented architecture, workflow, coding standards, technology stack, and project conventions.

## Development Guidelines

- Respect the documented architecture and dependency boundaries.
- Follow the project's coding standards and naming conventions.
- Reuse existing patterns before introducing new ones.
- Do not introduce new technologies, architectural patterns, or conventions unless explicitly requested or technically justified.
- Keep implementations simple, maintainable, and consistent with the existing codebase.

## AI Knowledge Base Maintenance

If a task changes:

- the architecture,
- the workflow,
- the technology stack,
- coding standards,
- reusable patterns,
- or project conventions,

recommend updating the AI Knowledge Base before finishing the task.

Otherwise, do not modify the `.ai` directory.
