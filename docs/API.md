# API

## Descripción

Este documento describe la arquitectura y las convenciones que seguirá la API REST del proyecto **Store Backend**.

Actualmente el proyecto no expone endpoints HTTP. La implementación de la API será desarrollada durante el Sprint 5 utilizando **FastAPI**.

---

# Arquitectura

La API seguirá una arquitectura por capas con separación de responsabilidades.

```
Cliente
    │
    ▼
Routes (FastAPI)
    │
    ▼
Services
    │
    ▼
Repositories
    │
    ▼
MySQL
```

Cada capa tendrá una única responsabilidad:

| Capa         | Responsabilidad                                         |
| ------------ | ------------------------------------------------------- |
| Routes       | Recibir las solicitudes HTTP y devolver las respuestas. |
| Services     | Implementar la lógica de negocio y las validaciones.    |
| Repositories | Gestionar el acceso a la base de datos.                 |
| Database     | Administrar la conexión con MySQL.                      |

---

# Tecnologías

La API utilizará las siguientes tecnologías:

- Python
- FastAPI
- PyMySQL
- MySQL 8.4
- Pydantic
- Uvicorn

---

# Formato de respuesta

Las respuestas de la API utilizarán el formato JSON.

Ejemplo:

```json
{
  "id": 1,
  "nombre": "Teclado Mecánico",
  "precio": 180000
}
```

---

# Convenciones

La API seguirá las siguientes convenciones:

- Los recursos utilizarán nombres en plural.
- Las rutas estarán escritas en minúsculas.
- Se utilizarán códigos de estado HTTP apropiados.
- Las respuestas estarán serializadas en formato JSON.
- La validación de datos se realizará mediante Pydantic.

---

# Endpoints previstos

## Productos

| Método | Endpoint        | Descripción                           |
| ------ | --------------- | ------------------------------------- |
| GET    | /productos      | Obtener todos los productos           |
| GET    | /productos/{id} | Obtener un producto por identificador |
| POST   | /productos      | Crear un producto                     |
| PUT    | /productos/{id} | Actualizar un producto                |
| DELETE | /productos/{id} | Eliminar un producto                  |

---

## Clientes

| Método | Endpoint       | Descripción                |
| ------ | -------------- | -------------------------- |
| GET    | /clientes      | Obtener todos los clientes |
| GET    | /clientes/{id} | Obtener un cliente         |
| POST   | /clientes      | Crear un cliente           |
| PUT    | /clientes/{id} | Actualizar un cliente      |
| DELETE | /clientes/{id} | Eliminar un cliente        |

---

## Pedidos

| Método | Endpoint      | Descripción               |
| ------ | ------------- | ------------------------- |
| GET    | /pedidos      | Obtener todos los pedidos |
| GET    | /pedidos/{id} | Obtener un pedido         |
| POST   | /pedidos      | Crear un pedido           |
| PUT    | /pedidos/{id} | Actualizar un pedido      |
| DELETE | /pedidos/{id} | Eliminar un pedido        |

---

# Estado

**Estado actual:** En planificación.

La implementación de la API REST comenzará durante el Sprint 5 del proyecto.
