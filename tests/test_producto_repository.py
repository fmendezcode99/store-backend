from app.repositories.producto_repository import ProductoRepository


def main():
    productos = ProductoRepository.obtener_todos()

    for producto in productos:
        print(producto)


if __name__ == "__main__":
    main()
