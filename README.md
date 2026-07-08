Store Backend

Store Backend es un proyecto de backend desarrollado como parte de un proceso de formación en desarrollo de software. Su objetivo es simular el funcionamiento de una tienda virtual aplicando buenas prácticas de programación, arquitectura de software y diseño de bases de datos.

El proyecto se desarrolla utilizando Python como lenguaje principal y MySQL como sistema de gestión de bases de datos. A medida que avance su desarrollo, incorporará una API para la gestión de clientes, empleados, productos y pedidos, siguiendo una arquitectura organizada, código limpio y control de versiones con Git.

--------

Objetivos

-Aplicar Programación Orientada a Objetos.
-Diseñar un dominio sólido antes de programar.
-Implementar una base de datos relacional con MySQL.
-Desarrollar una API REST con FastAPI.
-Aplicar buenas prácticas de arquitectura de software.
-Construir un proyecto de portafolio para futuras entrevistas técnicas.

--------

Tecnologías

Actualmente

-Python 3
-Git
-GitHub
-Visual Studio Code

Próximamente

-MySQL
-FastAPI
-SQLAlchemy
-Docker
-Pytest

--------

Estructura del proyecto


```
store-backend/
├── app/
│   ├── database/
│   │   └── models/
│   │       ├── persona.py
│   │       ├── cliente.py
│   │       ├── empleado.py
│   │       ├── producto.py
│   │       ├── pedido.py
│   │       └── detalle_pedido.py
│   ├── routes/
│   ├── services/
│   ├── utils/
│   ├── __init__.py
│   └── main.py
├── docs/
├── sql/
├── tests/
├── requirements.txt
├── README.md
├── LICENSE
└── .gitignore
```


--------

Modelos del dominio

Actualmente el proyecto cuenta con los siguientes modelos:

-Persona
-Cliente
-Empleado
-Producto
-Pedido
-DetallePedido

Estos modelos fueron diseñados siguiendo principios de responsabilidad única y separación de responsabilidades antes de iniciar la implementación de la base de datos.

--------

Roadmap del proyecto

Sprint 0 — Configuración inicial

-Crear repositorio Git
-Configurar GitHub
-Crear estructura del proyecto
-Configurar entorno virtual
-Configurar README
-Configurar .gitignore

Estado: Completado


Sprint 1 — Modelado del dominio

Modelos implementados

-Persona
-Cliente
-Empleado
-Producto

Conceptos aplicados

-Herencia
-Constructores
-Type Hints
-Docstrings
-Organización del proyecto

Estado: Completado


Sprint 2 — Gestión de pedidos

Modelos implementados

-Pedido
-DetallePedido

Diseño realizado

-Diseño del dominio
-Definición de responsabilidades
-Información histórica
-Modelado de entidades

Pendiente:
-[ ] Relaciones entre objetos mediante composición

Estado: En proceso


Sprint 3 — Base de datos MySQL

Pendiente:

-[ ] Modelo entidad-relación
-[ ] Diseño de tablas
-[ ] Claves primarias
-[ ] Claves foráneas
-[ ] Scripts SQL

Estado: Pendiente


Sprint 4 — Persistencia de datos

Pendiente:

-[ ] Conexión Python - MySQL
-[ ] CRUD de Clientes
-[ ] CRUD de Productos
-[ ] CRUD de Pedidos

Estado: Pendiente


Sprint 5 — API REST

Pendiente:

-[ ] FastAPI
-[ ] Endpoints
-[ ] Validaciones
-[ ] Documentación automática

Estado: Pendiente


Sprint 6 — Autenticación

Pendiente:

-[ ] Login
-[ ] Roles
-[ ] JWT
-[ ] Protección de rutas

Estado: Pendiente


Sprint 7 — Pruebas

Pendiente:

-[ ] Pytest
-[ ] Pruebas unitarias
-[ ] Pruebas de integración

Estado: Pendiente


Sprint 8 — Docker y despliegue

Pendiente:

-[ ] Docker
-[ ] Docker Compose
-[ ] Variables de entorno
-[ ] Deploy

Estado: Pendiente

--------

Estado actual

| Información | Estado |
|-------------|--------|
| Sprint actual | Sprint 2 |
| Modelos implementados | 6 |
| Base de datos | Pendiente |
| API REST | Pendiente |
| Docker | Pendiente |

--------


Próximo objetivo

Implementar las relaciones entre las entidades del dominio y comenzar el diseño del modelo relacional en MySQL.


--------

Autor

Juan Felipe Méndez

Proyecto desarrollado como parte de mi formación en Desarrollo de Software y construido siguiendo un enfoque incremental, aplicando buenas prácticas de programación y arquitectura de software.
