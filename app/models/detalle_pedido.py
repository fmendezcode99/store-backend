class DetallePedido:
    """Representa el detalle de un pedido en el sistema."""
    def __init__(self,
                cantidad: int,
                precio_unitario: float,
                subtotal: float
                ) -> None:
        self.cantidad = cantidad
        self.precio_unitario = precio_unitario
        self.subtotal = subtotal
        