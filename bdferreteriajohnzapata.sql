CREATE SCHEMA ferreteria;
USE ferreteria;

CREATE TABLE cliente (
        id INT NOT NULL AUTO INCREMENT PRIMARY KEY,
    nombre_clien Varchar(30) NOT NULL,
    dni_clien INT NOT NULL,
    direccion_clien Varchar(30) NOT NULL
    );
    
CREATE TABLE compra (
        id INT NOT NULL AUTO INCREMENT PRIMARY KEY,
    id_compra INT NOT NULL,
    cantidad INT NOT NULL,
    id_clien INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES cliente(id),
    fecha_compra Date NOT NULL,
    id_producto Varchar(20) NOT NULL,
    FOREIGN KEY (producto_id) REFERENCES producto(id),
    id_proveedores Varchar(20) NOT NULL,
    FOREIGN KEY (proveedores_id) REFERENCES proveedores(id)
    );
