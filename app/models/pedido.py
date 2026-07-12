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
                porcentaje_descuento: float = 0,
                porcentaje_iva: float = 0.19
                ) -> None:
        
        self.numero_pedido = numero_pedido
        self.estado = EstadoPedido.PENDIENTE
        
        self.fecha_compra = fecha_compra
        self.metodo_pago = metodo_pago
        self.direccion = direccion
        
        self.porcentaje_descuento = porcentaje_descuento
        self.porcentaje_iva = porcentaje_iva
        
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
        
    @property
    def subtotal(self) -> float:
        """Retorna el subtotal del pedido."""
        subtotal = 0
        for detalle in self._detalles:
            subtotal += detalle.subtotal
        return subtotal
    
    @property
    def valor_descuento(self) -> float:
        """Retorna el valor del descuento aplicado al pedido."""
        return self.subtotal * self.porcentaje_descuento
    
    @property
    def subtotal_con_descuento(self) -> float:
        """Retorna el valor del subtotal con el descuento aplicado al pedido."""
        return self.subtotal - self.valor_descuento
    
    @property
    def valor_iva(self) -> float:
        """Retorna el valor del iva aplicado al pedido."""
        return self.subtotal_con_descuento * self.porcentaje_iva
    
    @property
    def total(self) -> float:
        """Retorna el valor total del pedido."""
        return self.subtotal_con_descuento + self.valor_iva
