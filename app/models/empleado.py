from datetime import date

from app.models.persona import Persona
from app.enums.rol_empleado import RolEmpleado


class Empleado(Persona):
    """Representa a un empleado de la tienda."""
    def __init__(self,
                nombre: str,
                apellido: str,
                identificacion: str,
                email: str,
                fecha_de_nacimiento: date,
                rol: RolEmpleado,
                salario: float,
                fecha_inicio: date
                ) -> None:
        super().__init__(nombre, apellido, identificacion, email, fecha_de_nacimiento)
        self.rol = rol
        self.salario = salario
        self.fecha_inicio = fecha_inicio
