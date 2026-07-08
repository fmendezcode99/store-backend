from datetime import date
from persona import Persona

class Empleado(Persona):
    """ Representa a un empleado de la tienda"""
    def __init__(self,
                nombre: str,
                apellido: str,
                identificacion: str,
                email: str,
                fecha_de_nacimiento: date,
                cargo: str,
                salario: float,
                fecha_inicio: date
                ) -> None:
        super().__init__(nombre, apellido, identificacion, email, fecha_de_nacimiento)
        self.cargo = cargo
        self.salario = salario
        self.fecha_inicio = fecha_inicio
