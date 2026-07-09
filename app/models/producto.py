class Producto:
    """Representa a un producto en el sistema."""
    def __init__(self,
                nombre: str,
                sku: str,
                marca: str,
                categoria: str,
                costo: float,
                precio_venta: float,
                stock: int,
                estado_activo: bool
                ) -> None:
        self.nombre = nombre
        self.sku = sku
        self.marca = marca
        self.categoria = categoria
        self.costo = costo
        self.precio_venta = precio_venta
        self.stock = stock
        self.estado_activo = estado_activo
    @property
    def precio(self) -> float:
        """Retorna el precio de venta registrado para ese producto."""
        return self.precio_venta
