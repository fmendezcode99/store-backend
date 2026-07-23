from app.database.connection import get_connection


def main():
    connection = get_connection()

    try:
        with connection.cursor() as cursor:
            cursor.execute("SELECT VERSION();")
            result = cursor.fetchone()

            print(result)

    finally:
        connection.close()


if __name__ == "__main__":
    main()
