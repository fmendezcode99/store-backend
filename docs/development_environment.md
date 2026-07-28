# Development Environment

Este documento describe el entorno de desarrollo utilizado para el proyecto **Store Backend** y los pasos necesarios para configurar un nuevo equipo de trabajo.

---

## Sistemas Operativos

El proyecto ha sido probado en:

- Windows 11.
- Fedora 44 KDE Plasma.

---

## Herramientas utilizadas

| Herramienta  | Versión        | Propósito                            |
| :----------- | :------------- | :----------------------------------- |
| Python       | 3.14.x         | Lenguaje principal del proyecto.     |
| Git          | Última estable | Control de versiones.                |
| MySQL Server | 11.x           | Motor de base de datos.              |
| Podman       | Última estable | Contenedores y desarrollo local.     |
| VS Code      | Última estable | Editor de código.                    |
| Ollama       | Última estable | Modelos de IA ejecutados localmente. |
| GitHub       | -              | Repositorio remoto.                  |

---

## Estructura de trabajo

Cada proyecto mantiene su propio entorno virtual y una Base de Conocimiento para documentar el contexto técnico utilizado durante el desarrollo.

```text
store-backend/
│
├── .ai/
├── .venv/
├── app/
├── docs/
├── sql/
├── tests/
├── .gitignore
├── LICENSE
├── README.md
└── requirements.txt
```

---

## Configuración inicial

### 1. Clonar el repositorio

```bash
git clone <URL_DEL_REPOSITORIO>
```

---

### 2. Entrar al proyecto

```bash
cd store-backend
```

---

### 3. Crear el entorno virtual

#### Linux

```bash
python3 -m venv .venv
```

#### Windows

```powershell
python -m venv .venv
```

---

### 4. Activar el entorno virtual

#### Linux

```bash
source .venv/bin/activate
```

#### Windows

```powershell
.venv\Scripts\activate
```

---

### 5. Instalar las dependencias

```bash
pip install -r requirements.txt
```

---

## Base de datos

### Ingresar a MySQL

```bash
mysql -u root -p
```

---

### Crear la base de datos

```sql
SOURCE sql/schema/01_create_database.sql;
```

---

### Crear las tablas

```sql
SOURCE sql/schema/02_create_tables.sql;
```

---

### Insertar datos iniciales

```sql
SOURCE sql/seed/01_seed_data.sql;
```

---

## Contenedores

El proyecto utiliza **Podman** como motor de contenedores para el entorno de desarrollo.

En futuras etapas se incorporará **Podman Compose** para facilitar la orquestación de los servicios utilizados por la aplicación.

---

## Desarrollo asistido por IA

El proyecto incorpora una **Base de Conocimiento** ubicada en la carpeta `.ai/`, diseñada para proporcionar contexto estructurado a asistentes de inteligencia artificial durante el desarrollo.

Esta documentación incluye información sobre:

- Arquitectura del proyecto.
- Tecnologías utilizadas.
- Estándares de desarrollo.
- Flujo de trabajo.
- Patrones reutilizables.
- Decisiones técnicas.
- Prompts especializados.

> [!NOTE]
> La documentación de la carpeta `.ai/` se mantiene en **inglés** para facilitar su reutilización con diferentes asistentes de IA, mientras que la documentación dirigida a desarrolladores y reclutadores se mantiene en **español**.

---

## Flujo de trabajo

### Antes de comenzar una sesión de desarrollo

- `[ ]` Ejecutar `git pull`.
- `[ ]` Activar `.venv`.
- `[ ]` Verificar rama actual.
- `[ ]` Revisar `git status`.
- `[ ]` Consultar la Base de Conocimiento (`.ai/`) si es necesario.
- `[ ]` Comenzar a desarrollar.

---

### Al finalizar una sesión

- `[ ]` Ejecutar pruebas necesarias.
- `[ ]` Actualizar `README.md` (si aplica).
- `[ ]` Actualizar ADR (si aplica).
- `[ ]` Actualizar la Base de Conocimiento (`.ai/`) (si aplica).
- `[ ]` Revisar `git status`.
- `[ ]` Hacer commit.
- `[ ]` Hacer push.

---

## Convenciones del proyecto

### Git

- **`main`**: Código estable.
- **`feature/*`**: Desarrollo de nuevas funcionalidades.

---

### Commits

Los commits se escriben en inglés siguiendo la convención:

```text
type(scope): description
```

Ejemplos:

```text
feat(database): implement initial SQL CRUD operations
docs(readme): update sprint 3 progress
refactor(order): simplify subtotal calculation
fix(product): validate duplicated SKU
```

---

## Documentación

| Documento                  | Propósito                                                   |
| :------------------------- | :---------------------------------------------------------- |
| README.md                  | Presentación general del proyecto y guía de inicio.         |
| docs/adr/                  | Registro de las decisiones de arquitectura del proyecto.    |
| .ai/                       | Base de Conocimiento para el desarrollo asistido por IA.    |
| development_environment.md | Configuración del entorno de desarrollo y flujo de trabajo. |

---

## Tecnologías incorporadas

| Tecnología         | Estado       |
| :----------------- | :----------- |
| Python             | Implementado |
| Git                | Implementado |
| GitHub             | Implementado |
| MySQL              | Implementado |
| SQL                | Implementado |
| Podman             | Implementado |
| SQLAlchemy         | Pendiente    |
| Repository Pattern | Pendiente    |
| FastAPI            | Pendiente    |
| Podman Compose     | Pendiente    |
| Pytest             | Pendiente    |

---

## Objetivo

Mantener un entorno de desarrollo reproducible, organizado y alineado con prácticas profesionales que facilite el mantenimiento del proyecto, la incorporación de nuevas funcionalidades y una colaboración consistente mediante herramientas de inteligencia artificial cuando resulte apropiado.
