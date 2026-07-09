from app.models.producto import Producto

class DetallePedido:
    """Representa el detalle de un pedido en el sistema."""
    def __init__(self,
                producto: Producto,
                cantidad: int
                ) -> None:
        self.producto = producto
        self.cantidad = cantidad
        self.precio_unitario = producto.precio
    @property
    def subtotal(self) -> float:
        """Retorna el subtotal del detalle del pedido."""
        return self.cantidad * self.precio_unitario
    def aumentar_cantidad(self, cantidad: int) -> None:
        """Incrementa la cantidad del producto 
            si el valor recibido es positivo."""
        if cantidad <= 0:
            raise ValueError("La cantidad debe ser un número positivo.")
        self.cantidad += cantidad