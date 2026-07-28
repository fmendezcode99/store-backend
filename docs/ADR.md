# Architecture Decision Records (ADR)

Este documento registra las principales decisiones de arquitectura tomadas durante el desarrollo del proyecto.

El objetivo es conservar el contexto de cada decisión, facilitar el mantenimiento del código y entender el razonamiento detrás de la implementación.

---

## ADR-001 - Estado inicial del pedido

### Contexto

Durante el diseño de la clase `Pedido` surgió la necesidad de definir el estado inicial de un pedido recién creado. Inicialmente se evaluó recibir el estado como parámetro del constructor:

```python
Pedido(
    estado=EstadoPedido.PAGADO
)
```

Sin embargo, esta opción permitía crear pedidos en estados inválidos.

### Decisión

Todo pedido inicia automáticamente en el estado `PENDIENTE`. El estado inicial se asigna internamente dentro del constructor de la clase.

### Justificación

Esta decisión protege una regla del negocio. Un pedido recién creado no puede iniciar en estados como:

- `PAGADO`
- `EN_PREPARACION`
- `ENVIADO`
- `ENTREGADO`

El propio objeto es responsable de garantizar un estado inicial válido.

### Beneficios

- Evita estados inválidos.
- Centraliza la regla del negocio.
- Reduce errores de implementación.
- Facilita el mantenimiento futuro.

**Estado:** `Implementado`

---

## ADR-002 - Uso de Enum para representar valores del dominio

### Contexto

Durante el diseño del modelo de dominio se identificó que algunos atributos solo pueden tomar un conjunto limitado de valores válidos.

Inicialmente se consideró representarlos mediante cadenas de texto (`str`) o valores numéricos. Sin embargo, estas alternativas permiten errores de escritura, dificultan el mantenimiento del código y no garantizan la integridad del modelo.

### Decisión

Representar los valores del dominio mediante enumeraciones (`Enum`) de Python. Se implementaron las siguientes enumeraciones:

- `EstadoPedido`
- `MetodoPago`
- `RolEmpleado`

### Justificación

Las enumeraciones permiten definir un conjunto de valores válidos para cada concepto del negocio, evitando que el sistema reciba información incorrecta. Además, mejoran la legibilidad del código, facilitan el mantenimiento del proyecto y permiten que el propio dominio exprese sus reglas de manera clara.

### Beneficios

- Evita errores de escritura en cadenas de texto.
- Centraliza los valores permitidos del dominio.
- Mejora la legibilidad del código.
- Facilita el mantenimiento y la evolución del sistema.
- Incrementa la seguridad del modelo al restringir valores inválidos.

### Implementación

La decisión fue aplicada en los siguientes componentes:

- **Enumeraciones:**
  - `EstadoPedido`
  - `MetodoPago`
  - `RolEmpleado`
- **Modelos afectados:**
  - `Pedido`
  - `Empleado`

**Estado:** `Implementado`

---

## ADR-003 - Conservación del precio histórico

### Contexto

Durante el diseño de `DetallePedido` surgió la duda de si el sistema debía consultar el precio actual del producto cada vez que se visualizara un pedido. Sin embargo, el precio de un producto puede cambiar con el tiempo debido a promociones, inflación o cambios comerciales.

### Decisión

Cada `DetallePedido` almacenará el precio unitario del producto en el momento exacto de la compra.

### Justificación

Un pedido representa una fotografía de la compra realizada. Si el precio del producto cambia en el futuro, el historial de compras debe conservar los valores originales para garantizar la integridad de la información.

### Beneficios

- Conserva el historial de ventas.
- Permite generar facturas correctas.
- Evita inconsistencias al consultar pedidos antiguos.
- Facilita auditorías y reportes.

**Estado:** `Implementado`

---

## ADR-004 - Almacenamiento del total del pedido

### Contexto

Se evaluó calcular el total del pedido de forma dinámica a partir de los productos almacenados en `DetallePedido`. También se consideró guardar el valor total de forma estática directamente en la entidad `Pedido`.

### Decisión

El objeto `Pedido` almacenará de forma persistente el valor total de la compra.

### Justificación

Aunque el total puede calcularse nuevamente, almacenarlo permite conservar el valor exacto pagado por el cliente en el momento de la compra. Esto evita diferencias ocasionadas por cambios posteriores en precios, impuestos o descuentos.

### Beneficios

- Conserva información histórica.
- Facilita consultas y reportes.
- Reduce cálculos repetitivos.
- Mejora el rendimiento en consultas futuras.

**Estado:** `Implementado`

---

## ADR-005 - Gestión de los detalles de un pedido mediante composición

### Contexto

Durante el diseño del modelo de dominio se identificó que un pedido puede contener múltiples productos. Inicialmente se consideró permitir el acceso directo a la colección de detalles y agregar nuevos elementos mediante operaciones directas sobre la lista. Sin embargo, este enfoque permite modificar el pedido sin respetar las reglas del negocio.

### Decisión

El objeto `Pedido` será el único responsable de administrar la colección de `DetallePedido`. La colección de detalles será privada y únicamente podrá modificarse mediante el método público `agregar_detalle()`.

### Justificación

Centralizar la modificación de la colección permite proteger las reglas del negocio y mantener la consistencia del pedido. El método `agregar_detalle()` valida internamente que:

- El pedido se encuentre en estado `PENDIENTE`.
- Un mismo producto no se agregue dos veces al pedido.
- Si el producto ya existe, únicamente se incremente su cantidad.

### Beneficios

- Evita productos duplicados dentro del pedido.
- Centraliza las reglas del negocio.
- Reduce el riesgo de modificaciones incorrectas.
- Mantiene encapsulada la colección de detalles.
- Facilita la evolución futura del sistema.

### Componentes afectados

- **Modelos:**
  - `Pedido`
  - `DetallePedido`

**Estado:** `Implementado`

---

## ADR-006 - Cálculo dinámico de valores derivados del pedido

### Contexto

Durante el desarrollo del modelo de dominio se identificó que el pedido almacenaba valores calculables como el total, el descuento y el IVA. Esto generaba redundancia de información y aumentaba el riesgo de inconsistencias cuando alguno de los datos base cambiaba.

### Decisión

Se decidió almacenar únicamente los datos indispensables para representar la compra de forma estática:

- `porcentaje_descuento`
- `porcentaje_iva`

Los valores monetarios derivados serán calculados dinámicamente mediante propiedades (`@property`) en Python. Las propiedades implementadas son:

- `subtotal`
- `valor_descuento`
- `subtotal_con_descuento`
- `valor_iva`
- `total`

### Justificación

Esta decisión reduce la duplicidad de información y garantiza la consistencia matemática del modelo. Los valores derivados siempre reflejarán el estado actual del pedido en tiempo real, sin necesidad de sincronizar múltiples atributos de manera manual.

### Beneficios

- Evita datos redundantes en el almacenamiento.
- Reduce drásticamente el riesgo de inconsistencias.
- Facilita el mantenimiento del código.
- Mejora la legibilidad del dominio.
- Favorece el principio de responsabilidad única.

### Componentes afectados

- **Modelos:**
  - `Pedido`
  - `DetallePedido`

## Alcance

Las reglas relacionadas con cambios de estado del pedido y validación de inventario no forman parte de esta decisión.

Estas funcionalidades serán implementadas en el Sprint 3, una vez se incorpore la capa de persistencia y servicios, ya que requieren coordinación entre múltiples entidades y validaciones transaccionales.

**Estado:** `Implementado`

---

## ADR-007 - Implementación de la capa de persistencia con MySQL

### Contexto

Al finalizar el Sprint 2, el proyecto contaba con un modelo de dominio completamente implementado en Python, donde toda la información existía únicamente en memoria durante la ejecución de la aplicación.

Para continuar con el desarrollo era necesario incorporar una capa de persistencia que permitiera almacenar la información de forma permanente, preparar el proyecto para futuras integraciones con SQLAlchemy y construir una arquitectura escalable siguiendo buenas prácticas de desarrollo.

### Decisión

Se decidió incorporar MySQL como sistema gestor de bases de datos del proyecto.

Adicionalmente se definieron las siguientes decisiones de arquitectura:

- Utilizar **MySQL Server** como motor de base de datos.
- Utilizar **MySQL Workbench** para la administración y ejecución de scripts SQL.
- Mantener todos los scripts SQL versionados dentro de la carpeta `sql/`.
- Organizar los scripts por responsabilidad (`schema`, `seed` y `queries`).
- Implementar la persistencia de forma incremental, comenzando por la entidad `Producto`, al ser la de menor complejidad y no depender de otras entidades.

### Justificación

La implementación progresiva de la persistencia reduce la complejidad del aprendizaje y permite validar cada componente antes de incorporar relaciones entre entidades.

Además, mantener todos los scripts SQL dentro del repositorio garantiza que cualquier desarrollador pueda reconstruir completamente la base de datos utilizando únicamente los archivos versionados del proyecto.

### Beneficios

- Se incorpora persistencia permanente para el sistema.
- Se establece una arquitectura preparada para el crecimiento del proyecto.
- Se garantiza la reproducibilidad de la base de datos mediante scripts SQL.
- Se facilita el mantenimiento y versionado de los cambios estructurales.
- Se prepara el proyecto para la integración posterior con SQLAlchemy y el patrón Repository.

### Componentes afectados

- **Carpetas:**
  - `database`
  - `repositories`
  - `services`
  - `sql/schema`
  - `sql/seed`
  - `sql/queries`

- **Scripts SQL:**
  - `01_create_database.sql`
  - `02_create_tables.sql`

- **Infraestructura:**
  - MySQL Server
  - MySQL Workbench

## Alcance

Esta decisión establece únicamente la infraestructura y organización inicial de la capa de persistencia.

La implementación de las tablas, consultas SQL, integración con SQLAlchemy, patrón Repository y persistencia de las entidades se realizará progresivamente durante el Sprint 3.

**Estado:** `Implementado`

---

## ADR-008 - Organización de la capa de persistencia mediante scripts SQL

### Contexto

Con el inicio del Sprint 3 se incorporó MySQL como motor de base de datos del proyecto. Fue necesario definir una estrategia para organizar los scripts SQL de forma que fueran fáciles de mantener, reutilizar y versionar durante el desarrollo.

Además, se buscó evitar la ejecución manual de instrucciones aisladas en la consola, garantizando que toda modificación de la base de datos quedara registrada dentro del repositorio.

### Decisión

Se decidió organizar los scripts SQL según su responsabilidad:

- `schema/`
  - Creación de la base de datos.
  - Creación de tablas.

- `seed/`
  - Inserción de datos iniciales para pruebas y desarrollo.

- `queries/`
  - Consultas SQL utilizadas para aprendizaje, validación y pruebas.

Todos los cambios estructurales y de datos deberán implementarse primero en los archivos SQL correspondientes y posteriormente ejecutarse desde MySQL mediante el comando `SOURCE`.

### Justificación

Esta decisión convierte los scripts SQL en la fuente oficial de la estructura de la base de datos, evitando diferencias entre el repositorio y el entorno de ejecución.

La separación por responsabilidades facilita el mantenimiento, mejora la trazabilidad de cambios y permite ejecutar únicamente los scripts necesarios durante el desarrollo.

### Beneficios

- Mantiene una estructura clara y organizada.
- Favorece el principio de responsabilidad única.
- Facilita el versionamiento mediante Git.
- Permite reproducir la base de datos desde cero utilizando únicamente los scripts del proyecto.
- Reduce el riesgo de cambios manuales no documentados.

### Componentes afectados

- `sql/schema`
- `sql/seed`
- `sql/queries`
- Documentación del proyecto (`README`)

### Alcance

Esta decisión aplica únicamente a la organización de la capa de persistencia durante el desarrollo del proyecto.

La incorporación de SQLAlchemy, migraciones automáticas y el patrón Repository serán abordados en decisiones posteriores.

**Estado:** `Implementado`

---

## ADR-009 - Adopción de una Base de Conocimiento para Desarrollo Asistido por IA

### Contexto

Durante el desarrollo del proyecto se identificó que el uso de asistentes de inteligencia artificial mejoraba significativamente la productividad en tareas como la generación de código, revisión de arquitectura, documentación técnica, refactorización y resolución de problemas.

Sin embargo, estos asistentes no conservan permanentemente el contexto completo del proyecto, lo que obligaba a repetir información sobre la arquitectura, estándares de desarrollo y decisiones técnicas en cada sesión, generando respuestas inconsistentes y pérdida de tiempo.

### Decisión

Se decidió incorporar una **Base de Conocimiento para IA** ubicada en la carpeta `.ai/`. Esta base centraliza la información relevante mediante documentación especializada y organizada según su responsabilidad:

- Contexto del proyecto y alcance.
- Arquitectura y tecnologías utilizadas.
- Estándares de desarrollo y flujos de trabajo.
- Patrones reutilizables y prompts especializados.

Esta documentación se mantendrá estrictamente en **inglés** para facilitar su reutilización con diferentes modelos de IA, mientras que la documentación para desarrolladores humanos permanecerá en español.

### Justificación

La adopción de una Base de Conocimiento dedicada permite separar la documentación dirigida a personas (`docs/`) de aquella orientada a asistentes de inteligencia artificial (`.ai/`), siguiendo el principio de responsabilidad única (SRP).

Esto evita la necesidad de repetir contexto en cada nueva conversación, mejora la consistencia de las respuestas generadas por distintos asistentes de IA y facilita la integración de nuevas herramientas de automatización.

### Beneficios

- Reduce la necesidad de repetir contexto en nuevas conversaciones con la IA.
- Mejora la consistencia y precisión de las respuestas generadas.
- Centraliza el conocimiento técnico optimizado para modelos de lenguaje.
- Permite documentar la evolución del proyecto de manera incremental y automatizada.
- Separa limpiamente el contenido para humanos del contenido de contexto para IA.

### Componentes afectados

- Carpeta raíz del proyecto (creación de `.ai/`)
- Documentación de arquitectura (`docs/ADR.md`)
- Documentación del proyecto (`README.md`)

### Alcance

Esta decisión aplica a toda la documentación de contexto, guías de estilo, reglas de prompt engineering y configuraciones específicas destinadas a ser consumidas por herramientas de IA durante el ciclo de vida del proyecto.

**Estado:** `Aceptado`

---

## ADR-010 - Configuración centralizada mediante variables de entorno

### Contexto

A medida que el proyecto evoluciona hacia una arquitectura en capas, resulta necesario desacoplar la configuración de la aplicación de la lógica de negocio y del acceso a datos.

La conexión a la base de datos requiere información sensible, como el host, puerto, nombre de la base de datos y credenciales de acceso. Definir estos valores directamente en el código dificultaría el mantenimiento, limitaría la portabilidad entre distintos entornos y aumentaría el riesgo de exponer información confidencial en el repositorio.

### Decisión

Se decidió centralizar la configuración de la aplicación mediante un módulo `settings.py`, encargado de cargar las variables de entorno definidas en un archivo `.env`.

La configuración relacionada con la base de datos se representa mediante una clase `DatabaseConfig`, responsable de encapsular los parámetros necesarios para establecer la conexión con MySQL.

De esta forma, el resto de la aplicación accederá a la configuración únicamente a través de este módulo, evitando dependencias directas con variables de entorno o valores codificados en los diferentes componentes del sistema.

### Justificación

Centralizar la configuración favorece la separación de responsabilidades entre la infraestructura y la lógica de la aplicación, permitiendo modificar parámetros de configuración sin afectar el código fuente.

Esta decisión también facilita la administración de múltiples entornos de ejecución (desarrollo, pruebas y producción), mejora la mantenibilidad del proyecto y establece una base sólida para la incorporación de nuevas configuraciones en futuras etapas del desarrollo.

### Beneficios

- Centraliza toda la configuración de la aplicación en un único módulo.
- Evita almacenar credenciales y parámetros sensibles dentro del código fuente.
- Facilita la administración de diferentes entornos de ejecución.
- Reduce el acoplamiento entre la configuración y la lógica de negocio.
- Mejora la mantenibilidad y escalabilidad de la aplicación.
- Facilita la incorporación futura de nuevas configuraciones (API Keys, JWT, servicios externos, entre otros).

### Componentes afectados

- Archivo `.env`
- Módulo `app/config/settings.py`
- Módulo `app/database/connection.py`
- Documentación del proyecto (`README.md`)

### Alcance

Esta decisión aplica a toda la configuración de la aplicación que dependa del entorno de ejecución. Cualquier parámetro configurable deberá incorporarse mediante variables de entorno y centralizarse en el módulo de configuración, evitando la definición de valores directamente en el código fuente.

**Estado:** `Aceptado`

---
