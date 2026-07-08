from datetime import date
from persona import Persona

class Cliente(Persona):
    """Representa a un cliente dentro del sistema."""
    def __init__(
            self,
            nombre: str,
            apellido: str,
            identificacion: str,
            email: str,
            fecha_de_nacimiento: date,
            fecha_de_registro: date,
            puntos: int,
            estado_activo: bool
            ) -> None:
        super().__init__(nombre, apellido, identificacion, email, fecha_de_nacimiento)
        self.fecha_de_registro = fecha_de_registro
        self.puntos = puntos
        self.estado_activo = estado_activo
        