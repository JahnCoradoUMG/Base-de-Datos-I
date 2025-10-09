```mermaid
erDiagram
    CLIENTE {
        int id_cliente PK
        string nombre
        string correo
        string direccion_envio
    }

    PEDIDO {
        int id_pedido PK
        date fecha_pedido
        float total
        int id_cliente FK
    }

    LIBRO {
        string isbn PK
        string titulo
        string autor
        float precio
    }

    CATEGORIA {
        int id_categoria PK
        string nombre_categoria
    }

    DETALLE_PEDIDO {
        int id_pedido FK
        string isbn FK
        int cantidad
    }

    CLIENTE ||--o{ PEDIDO : "realiza"
    PEDIDO ||--o{ DETALLE_PEDIDO : "incluye"
    LIBRO ||--o{ DETALLE_PEDIDO : "es parte de"
    LIBRO }o--o{ CATEGORIA : "pertenece a"
