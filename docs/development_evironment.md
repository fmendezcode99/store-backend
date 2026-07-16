# Development Environment

Este documento describe el entorno de desarrollo utilizado para el proyecto **Store Backend** y los pasos necesarios para configurar un nuevo equipo de trabajo.

---

# Sistemas Operativos

El proyecto ha sido probado en:

- Windows 11
- Fedora 44 KDE Plasma

---

# Herramientas utilizadas

| Herramienta | Versión | Propósito |
|------------|----------|-----------|
| Python | 3.14.x | Lenguaje principal del proyecto |
| Git | Última estable | Control de versiones |
| MySQL Server | 11.x | Motor de base de datos |
| Docker | Última estable | Contenedores (implementación futura) |
| VS Code | Última estable | Editor de código |
| GitHub | - | Repositorio remoto |

---

# Estructura de trabajo

Cada proyecto mantiene su propio entorno virtual.

```text
store-backend/
│
├── .venv/
├── app/
├── docs/
├── sql/
├── tests/
├── README.md
└── requirements.txt
```

---

# Configuración inicial

## 1. Clonar el repositorio

```bash
git clone <URL_DEL_REPOSITORIO>
```

---

## 2. Entrar al proyecto

```bash
cd store-backend
```

---

## 3. Crear el entorno virtual

### Linux

```bash
python3 -m venv .venv
```

### Windows

```powershell
python -m venv .venv
```

---

## 4. Activar el entorno virtual

### Linux

```bash
source .venv/bin/activate
```

### Windows

```powershell
.venv\Scripts\activate
```

---

## 5. Instalar las dependencias

```bash
pip install -r requirements.txt
```

---

# Base de datos

## Ingresar a MySQL

```bash
mysql -u root -p
```

---

## Crear la base de datos

```sql
SOURCE sql/schema/01_create_database.sql;
```

---

## Crear las tablas

```sql
SOURCE sql/schema/02_create_tables.sql;
```

---

## Insertar datos iniciales

```sql
SOURCE sql/seed/01_seed_data.sql;
```

---

# Flujo de trabajo

Antes de comenzar una sesión de desarrollo:

```text
□ git pull
□ Activar .venv
□ Verificar rama actual
□ Revisar git status
□ Comenzar a desarrollar
```

Al finalizar una sesión:

```text
□ Ejecutar pruebas necesarias
□ Actualizar README (si aplica)
□ Actualizar ADR (si aplica)
□ Revisar git status
□ Commit
□ Push
```

---

# Convenciones del proyecto

## Git

- `main`
  - Código estable.

- `feature/*`
  - Desarrollo de nuevas funcionalidades.

---

## Commits

Los commits se escriben en inglés siguiendo la convención:

```text
type(scope): description
```

Ejemplos:

```text
feat(database): implement initial SQL CRUD operations

docs(readme): update sprint 3 progress

refactor(pedido): simplify subtotal calculation

fix(product): validate duplicated SKU
```

---

## Documentación

- README → Estado general del proyecto.
- ADR → Decisiones de arquitectura.
- development_environment.md → Configuración del entorno de desarrollo.

---

# Tecnologías incorporadas

| Tecnología | Estado |
|------------|--------|
| Python | Implementado |
| Git | Implementado |
| GitHub | Implementado |
| MySQL | Implementado |
| SQL | Implementado |
| SQLAlchemy | Pendiente |
| Repository Pattern | Pendiente |
| FastAPI | Pendiente |
| Docker Compose | Pendiente |
| Pytest | Pendiente |

---

# Objetivo

Mantener un entorno de desarrollo reproducible, organizado y alineado con prácticas profesionales para facilitar el mantenimiento y la incorporación de nuevas funcionalidades.