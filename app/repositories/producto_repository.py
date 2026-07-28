from typing import Any, cast

from app.models.producto import Producto
from app.repositories.base_repository import BaseRepository


class ProductoRepository(BaseRepository):
    """Repositorio para gestionar la persistencia de productos."""

    def obtener_por_id(self, id_producto: int) -> Producto | None:
        """
        Obtiene un producto por su identificador.

        Args:
            id_producto: Identificador del producto.

        Returns:
            Producto si existe; de lo contrario, None.
        """
        query = """
            SELECT
                id_producto,
                nombre,
                sku,
                marca,
                categoria,
                costo,
                precio_venta,
                stock,
                estado_activo
            FROM productos
            WHERE id_producto = %s;
        """

        self._cursor.execute(query, (id_producto,))
        resultado = self._cursor.fetchone()

        if resultado is None:
            return None

        return Producto(
            nombre=resultado["nombre"],
            sku=resultado["sku"],
            marca=resultado["marca"],
            categoria=resultado["categoria"],
            costo=resultado["costo"],
            precio_venta=resultado["precio_venta"],
            stock=resultado["stock"],
            estado_activo=bool(resultado["estado_activo"]),
            id_producto=resultado["id_producto"],
        )

    def listar(self) -> list[Producto]:
        query = """
        SELECT
            id_producto,
            nombre,
            sku,
            marca,
            categoria,
            costo,
            precio_venta,
            stock,
            estado_activo
        FROM productos
        ORDER BY id_producto;
        """

        self._cursor.execute(query)

        resultados = cast(list[dict[str, Any]], self._cursor.fetchall())

        productos: list[Producto] = []

        for resultado in resultados:
            producto = Producto(
                nombre=resultado["nombre"],
                sku=resultado["sku"],
                marca=resultado["marca"],
                categoria=resultado["categoria"],
                costo=resultado["costo"],
                precio_venta=resultado["precio_venta"],
                stock=resultado["stock"],
                estado_activo=bool(resultado["estado_activo"]),
                id_producto=resultado["id_producto"],
            )

            productos.append(producto)

        return productos

    def insertar(self, producto: Producto) -> Producto:
        query = """
        INSERT INTO productos (
            nombre,
            sku,
            marca,
            categoria,
            costo,
            precio_venta,
            stock,
            estado_activo
        )
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s);
        """

        self._cursor.execute(
            query,
            (
                producto.nombre,
                producto.sku,
                producto.marca,
                producto.categoria,
                producto.costo,
                producto.precio_venta,
                producto.stock,
                producto.estado_activo,
            ),
        )

        self.commit()

        producto.id_producto = self._cursor.lastrowid

        return producto

    def actualizar(self, producto: Producto) -> Producto:
        if producto.id_producto is None:
            raise ValueError(
                "El producto debe tener un ID para actualizarse."
            )

        query = """
        UPDATE productos
        SET
            nombre = %s,
            sku = %s,
            marca = %s,
            categoria = %s,
            costo = %s,
            precio_venta = %s,
            stock = %s,
            estado_activo = %s
        WHERE id_producto = %s;
        """

        self._cursor.execute(
            query,
            (
                producto.nombre,
                producto.sku,
                producto.marca,
                producto.categoria,
                producto.costo,
                producto.precio_venta,
                producto.stock,
                producto.estado_activo,
                producto.id_producto,
            ),
        )

        self.commit()

        return producto

    def eliminar(self, id_producto: int) -> bool:
        query = """
        DELETE FROM productos
        WHERE id_producto = %s;
        """

        self._cursor.execute(
            query,
            (id_producto,)
        )

        self.commit()

        return self._cursor.rowcount > 0
