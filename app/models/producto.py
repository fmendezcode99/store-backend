from decimal import Decimal

class Producto:
    """Representa un producto en el sistema."""
    def __init__(self,
                nombre: str,
                sku: str,
                marca: str,
                categoria: str,
                costo: Decimal,
                precio_venta: Decimal,
                stock: int,
                estado_activo: bool,
                id_producto: int | None = None
                ) -> None:
        self.id_producto = id_producto
        self.nombre = nombre
        self.sku = sku
        self.marca = marca
        self.categoria = categoria
        self.costo = costo
        self.precio_venta = precio_venta
        self.stock = stock
        self.estado_activo = estado_activo

    @property
    def precio(self) -> Decimal:
        """Retorna el precio de venta registrado para ese producto."""
        return self.precio_venta

    def __repr__(self) -> str:
        return (
            f"Producto("
            f"id_producto={self.id_producto}, "
            f"nombre='{self.nombre}', "
            f"sku='{self.sku}', "
            f"precio={self.precio_venta}, "
            f"stock={self.stock}, "
            f"activo={self.estado_activo})"
        )
