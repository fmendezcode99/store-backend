# Development Workflow

## Purpose

This document defines the standard development workflow for the Store Backend project.

Its objective is to ensure consistency, maintainability, and continuous learning throughout the project's evolution.

Every feature, bug fix, and refactoring should follow this workflow.

---

# Development Philosophy

Development is an iterative process.

Do not rush to write code.

Always follow this sequence:

1. Understand
2. Design
3. Implement
4. Verify
5. Review
6. Document
7. Commit (Developer Decision)

Every step has value.

---

# Standard Workflow

## Step 1 — Understand the Problem

Before writing code:

- Understand the objective.
- Identify requirements.
- Ask questions if something is unclear.
- Avoid assumptions.

The AI should prioritize understanding over implementation.

---

## Step 2 — Design the Solution

Before implementation:

- Explain the proposed solution.
- Identify affected modules.
- Consider alternative approaches.
- Choose the simplest maintainable solution.

Architecture comes before implementation.

---

## Step 3 — Implement

Implementation should be:

- Incremental
- Readable
- Well-structured
- Easy to review

Avoid large changes.

Prefer multiple small improvements.

---

## Step 4 — Verify

After implementation:

Verify:

- Correctness
- Readability
- Type hints
- Naming
- Error handling
- Consistency

Never assume the code is correct without reviewing it.

---

## Step 5 — Review

Every implementation should receive a technical review.

Review should include:

- Code quality
- Maintainability
- Simplicity
- Possible improvements
- Best practices

Reviews should be constructive.

---

## Step 6 — Documentation

Documentation should evolve together with the project.

Update documentation whenever:

- Architecture changes
- New modules are added
- New technologies are introduced
- Development workflow changes
- Important decisions are made

Documentation is part of development.

---

## Step 7 — Git

Git decisions always belong to the developer.

The AI must never decide:

- when to commit
- what to commit
- when to merge
- when to push

The AI may:

- explain Git concepts
- review staged changes
- suggest commit messages
- explain merge conflicts

Repository history belongs to the developer.

---

# Branch Strategy

The project follows a simple branching strategy.

Main branches:

- main
- feature/\*

Examples:

feature/database

feature/sqlalchemy

feature/authentication

feature/testing

Feature branches should remain focused on a single objective.

---

# Change Scope

Every change should have a clear objective.

Avoid:

- unrelated refactoring
- unnecessary cleanup
- modifying unrelated modules
- mixing multiple features in one implementation

Keep pull-sized changes even when working locally.

---

# AI Responsibilities During Development

The AI should:

- Explain before implementing.
- Ask questions when requirements are unclear.
- Respect the existing architecture.
- Encourage clean code.
- Recommend best practices.
- Suggest improvements with technical justification.

The AI should never take control of the project.

---

# Error Handling Philosophy

Mistakes are learning opportunities.

When errors occur:

- Explain the cause.
- Explain the impact.
- Explain how to fix them.
- Explain how to avoid them in the future.

Avoid simply providing corrected code.

---

# Decision Making

When multiple valid solutions exist:

Present:

- Option A
- Option B

Explain:

- Advantages
- Disadvantages
- Trade-offs

The final decision belongs to the developer.

---

# Incremental Development

Prefer:

Small improvements completed frequently.

Avoid:

Large rewrites.

The project should continuously improve without becoming unstable.

---

# Definition of Success

A successful implementation is one that:

- Works correctly.
- Is understandable.
- Follows project standards.
- Fits the architecture.
- Can be maintained easily.
- Helps the developer learn something new.

Working software is important.

Understandable software is the ultimate goal.

---

# Guiding Principle

Leave the project better than you found it.

Every contribution should improve:

- the code
- the documentation
- the architecture
- or the developer's knowledge.
