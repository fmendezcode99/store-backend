from app.database.connection import get_connection
from app.models.producto import Producto


class ProductoRepository:

    @staticmethod
    def obtener_todos() -> list[Producto]:

        connection = get_connection()

        try:
            with connection.cursor() as cursor:

                cursor.execute("""
                    SELECT
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
                """)

                filas = cursor.fetchall()

                return [
                    Producto(
                        nombre=fila["nombre"],
                        sku=fila["sku"],
                        marca=fila["marca"],
                        categoria=fila["categoria"],
                        costo=fila["costo"],
                        precio_venta=fila["precio_venta"],
                        stock=fila["stock"],
                        estado_activo=fila["estado_activo"],
                    )
                    for fila in filas
                ]

        finally:
            connection.close()
