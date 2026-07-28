from dataclasses import dataclass
from dotenv import load_dotenv

import os

# Carga las variables del archivo .env
load_dotenv()


@dataclass(frozen=True, slots=True)
class DatabaseConfig:
    """Configuración de conexión a la base de datos."""
    host: str = os.getenv("DB_HOST", "127.0.0.1")
    port: int = int(os.getenv("DB_PORT", "3306"))

    database: str = os.getenv("DB_NAME", "")

    user: str = os.getenv("DB_USER", "")
    password: str = os.getenv("DB_PASSWORD", "")


db_config = DatabaseConfig()
