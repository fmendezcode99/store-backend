# Glossary

## Purpose

This glossary defines the terminology used throughout the Store Backend project.

Using consistent terminology improves communication, documentation, code readability, and AI-generated responses.

Every important concept should have a single, well-defined meaning.

---

# Domain Terms

## Product

An item that can be stored, managed, and sold by the system.

Examples

- Laptop
- Keyboard
- Monitor

---

## Category

A logical grouping of products.

A product belongs to one category.

Examples

- Electronics
- Furniture
- Office Supplies

---

## Inventory

Represents the available stock of a product.

Inventory tracks quantities and stock availability.

---

## Customer

A person or organization purchasing products.

Customers place orders.

---

## Order

A purchase request created by a customer.

An order contains one or more products.

---

## Order Item

A single product inside an order.

Each order may contain multiple order items.

---

# Technical Terms

## Entity

A business object represented within the application.

Examples

- Product
- Customer
- Order

---

## Model

A Python representation of an entity.

Models describe the application's data structures.

---

## Repository

The layer responsible for database access.

Repositories perform CRUD operations.

Repositories do not contain business rules.

---

## Service

The layer responsible for business logic.

Services coordinate repositories and implement business rules.

---

## Route

An HTTP endpoint exposed by the application.

Routes receive requests and return responses.

---

## Schema

A structure used to validate and serialize data.

Schemas define request and response formats.

---

## Migration

A version-controlled database schema change.

Migrations allow databases to evolve safely.

---

## ORM

Object Relational Mapping.

Maps Python objects to relational database tables.

The project uses SQLAlchemy as its ORM.

---

## CRUD

The four basic database operations:

- Create
- Read
- Update
- Delete

---

# Development Terms

## Sprint

A short development cycle focused on specific goals.

---

## Milestone

A significant achievement in the project's progress.

Examples

- Database completed
- FastAPI integrated
- Authentication implemented

---

## Refactoring

Improving code structure without changing external behavior.

The goal is better maintainability.

---

## Technical Debt

Future work created by taking shortcuts today.

Technical debt should be minimized whenever possible.

---

# AI Terms

## Knowledge Base

The documentation inside the `.ai` directory.

It provides project-specific knowledge for AI assistants.

---

## Context

The information required for the AI to understand the project.

Context should always be accurate and up to date.

---

## Prompt

A specialized instruction designed for a specific development task.

Examples

- Code review
- SQL review
- Documentation generation

---

# Naming Conventions

Use these terms consistently.

Preferred:

- Product
- Customer
- Repository
- Service
- Route
- Schema

Avoid using multiple words for the same concept.

Consistency improves readability.

---

# Update Policy

Add new terms whenever:

- A new business concept is introduced.
- A new architectural pattern is adopted.
- A new technology becomes part of the project.
- Existing terminology changes.

The glossary should remain the single source of truth for project terminology.
