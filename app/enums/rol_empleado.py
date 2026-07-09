from enum import Enum

class RolEmpleado(Enum):
    """Representa un rol de empleado en el sistema."""
    GERENTE = "GERENTE"
    ADMINISTRADOR = "ADMINISTRADOR"
    VENDEDOR = "VENDEDOR"
    BODEGA = "BODEGA"
    CAJERO = "CAJERO"