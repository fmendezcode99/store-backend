from enum import Enum

class MetodoPago(Enum):
    """Representa un método de pago en el sistema."""
    EFECTIVO = "EFECTIVO"
    TARJETA_CREDITO = "TARJETA_CREDITO"
    TARJETA_DEBITO = "TARJETA_DEBITO"
    TRANSFERENCIA = "TRANSFERENCIA"
    PSE = "PSE"
