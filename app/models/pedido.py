from datetime import date
from app.enums.estado_pedido import EstadoPedido

class Pedido:
    """Representa un pedido en el sistema."""
    def __init__(self,
                numero_pedido: str,
                fecha_compra: date,
                metodo_pago: str,
                direccion: str,
                descuento: float,
                iva: float,
                total: float,
                ) -> None:
        
        self.numero_pedido = numero_pedido
        self.estado = EstadoPedido.PENDIENTE
        self.fecha_compra = fecha_compra
        self.metodo_pago = metodo_pago
        self.direccion = direccion
        self.descuento = descuento
        self.iva = iva
        self.total = total
        