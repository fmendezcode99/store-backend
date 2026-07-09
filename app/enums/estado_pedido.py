from enum import Enum

class EstadoPedido(Enum):
    """Representa el estado de un pedido en el sistema."""
    PENDIENTE = "PENDIENTE"
    PAGADO = "PAGADO"
    EN_PREPARACION = "EN_PREPARACION"
    LISTO_PARA_ENVIAR = "LISTO_PARA_ENVIAR"
    ENVIADO = "ENVIADO"
    ENTREGADO = "ENTREGADO"
    CANCELADO = "CANCELADO"
    DEVUELTO = "DEVUELTO"
