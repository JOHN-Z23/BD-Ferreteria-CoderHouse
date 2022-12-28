use ferreteria;
-- vista que muestra productos con precio mayor a 1000
create or replace view precio_mayor_a_1000
as
select cod_producto, precio_venta
from productos
where precio_venta > 1000 in (select precio_venta
from productos);

-- vista que muestra la existencia del producto junto con su nombre

create or replace view existencia_nombre_productos
as
select existencia, nombre_producto
from productos;

-- vista que muestra el numero de telefono del proveedor junto con su nombre

create or replace view telefono_y_proveedor
as
select proveedores, telefono_prove
from proveedores;

-- vista que muestra la existencia de los productos mayores a 30


create or replace view existencia_mayor_a_30 
as
(select g.id_productos, v.existencia
	from compra g 
	join productos v
	on g.id_productos = v.cod_producto
    where v.existencia > 30
);

-- vista que muestra el nombre y direccion del cliente

create or replace view nombreclien_direccion
as
select nombre_clien, direccion_clien
from cliente;


