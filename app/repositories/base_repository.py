from typing import cast

from pymysql.connections import Connection
from pymysql.cursors import DictCursor

from app.database.connection import get_connection


class BaseRepository:
    """
    Clase base para todos los repositorios del proyecto.

    Gestiona la conexión, el cursor y las operaciones comunes
    sobre la base de datos.
    """

    def __init__(self) -> None:
        """Inicializa la conexión y el cursor."""
        self._connection: Connection = get_connection()
        self._cursor = cast(DictCursor, self._connection.cursor())
    def commit(self) -> None:
        """Confirma la transacción actual."""
        self._connection.commit()

    def rollback(self) -> None:
        """Revierte la transacción actual."""
        self._connection.rollback()

    def close(self) -> None:
        """Libera los recursos utilizados."""
        self._cursor.close()
        self._connection.close()
