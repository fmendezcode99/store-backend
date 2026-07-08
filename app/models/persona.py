from datetime import date

class Persona:
    """Representa a una persona dentro del sistema."""
    def __init__(self,
                nombre: str,
                apellido: str,
                identificacion: str,
                email: str,
                fecha_de_nacimiento: date
                ) -> None:
        self.nombre = nombre
        self.apellido = apellido
        self.identificacion = identificacion
        self.email = email
        self.fecha_de_nacimiento = fecha_de_nacimiento
