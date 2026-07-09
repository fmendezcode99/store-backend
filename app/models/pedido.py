from datetime import date

from app.enums.estado_pedido import EstadoPedido
from app.enums.metodo_pago import MetodoPago
from app.models.detalle_pedido import DetallePedido

class Pedido:
    """Representa un pedido en el sistema."""
    def __init__(self,
                numero_pedido: str,
                fecha_compra: date,
                metodo_pago: MetodoPago,
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
        
        self._detalles: list[DetallePedido] = []
    
    def agregar_detalle(self, detalle: DetallePedido) -> None:
        """Agrega un detalle al pedido."""
        if self.estado != EstadoPedido.PENDIENTE:
            raise ValueError("Solo se pueden agregar productos a pedidos en estado PENDIENTE.")
        for detalle_existente in self._detalles:
            if detalle_existente.producto.sku == detalle.producto.sku:
                detalle_existente.aumentar_cantidad(cantidad=detalle.cantidad)
                return
        self._detalles.append(detalle)
        