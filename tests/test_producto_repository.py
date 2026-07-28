from decimal import Decimal

from app.models.producto import Producto
from app.repositories.producto_repository import ProductoRepository


def main() -> None:
    repo = ProductoRepository()

    try:
        # ==========================================
        # PRUEBA 1 - OBTENER PRODUCTO POR ID
        # ==========================================
        print("=" * 60)
        print("PRUEBA 1 - OBTENER PRODUCTO POR ID")
        print("=" * 60)

        producto = repo.obtener_por_id(1)

        if producto is None:
            print("No se encontró el producto con ID 1.")
        else:
            print(producto)

        # ==========================================
        # PRUEBA 2 - LISTAR PRODUCTOS
        # ==========================================
        print("\n" + "=" * 60)
        print("PRUEBA 2 - LISTAR PRODUCTOS")
        print("=" * 60)

        productos = repo.listar()

        print(f"Total de productos: {len(productos)}\n")

        for producto in productos:
            print(producto)

        # ==========================================
        # PRUEBA 3 - INSERTAR PRODUCTO
        # ==========================================
        print("\n" + "=" * 60)
        print("PRUEBA 3 - INSERTAR PRODUCTO")
        print("=" * 60)

        nuevo_producto = Producto(
            nombre="Mouse Gamer Logitech G502 X",
            sku="LOG-G503X",
            marca="Logitech",
            categoria="Mouse",
            costo=Decimal("180000.00"),
            precio_venta=Decimal("249900.00"),
            stock=15,
            estado_activo=True,
        )

        producto_insertado = repo.insertar(nuevo_producto)

        print("Producto insertado correctamente:")
        print(producto_insertado)

        # ==========================================
        # PRUEBA 4 - ACTUALIZAR PRODUCTO
        # ==========================================
        print("\n" + "=" * 60)
        print("PRUEBA 4 - ACTUALIZAR PRODUCTO")
        print("=" * 60)

        if producto_insertado.id_producto is None:
            raise RuntimeError(
                "El producto no recibió un ID después de la inserción."
            )

        producto_insertado.nombre = "Mouse Gamer Logitech G502 HERO"
        producto_insertado.stock = 20
        producto_insertado.precio_venta = Decimal("259900.00")

        repo.actualizar(producto_insertado)

        print("Producto actualizado:")
        print(producto_insertado)

        # ==========================================
        # PRUEBA 5 - VERIFICAR ACTUALIZACIÓN
        # ==========================================
        print("\n" + "=" * 60)
        print("PRUEBA 5 - VERIFICAR ACTUALIZACIÓN")
        print("=" * 60)

        assert producto_insertado.id_producto is not None

        producto_verificado = repo.obtener_por_id(
            producto_insertado.id_producto
        )

        if producto_verificado is None:
            print("No se encontró el producto actualizado.")
        else:
            print(producto_verificado)

        # ==========================================
        # PRUEBA 6 - ELIMINAR PRODUCTO
        # ==========================================
        print("\n" + "=" * 60)
        print("PRUEBA 6 - ELIMINAR PRODUCTO")
        print("=" * 60)

        eliminado = repo.eliminar(
            producto_insertado.id_producto
        )

        if eliminado:
            print("Producto eliminado correctamente.")
        else:
            print("No fue posible eliminar el producto.")

        # ==========================================
        # PRUEBA 7 - VERIFICAR ELIMINACIÓN
        # ==========================================
        print("\n" + "=" * 60)
        print("PRUEBA 7 - VERIFICAR ELIMINACIÓN")
        print("=" * 60)

        producto_eliminado = repo.obtener_por_id(
            producto_insertado.id_producto
        )

        if producto_eliminado is None:
            print("El producto ya no existe en la base de datos.")
        else:
            print("ERROR: El producto sigue existiendo.")
            print(producto_eliminado)

    finally:
        repo.close()


if __name__ == "__main__":
    main()
