import pymysql

from app.config.settings import db_config


def get_connection():
    """Crea y devuelve una conexión a MySQL."""
    return pymysql.connect(
        host=db_config.host,
        port=db_config.port,
        user=db_config.user,
        password=db_config.password,
        database=db_config.database,
        charset="utf8mb4",
        cursorclass=pymysql.cursors.DictCursor,
    )
