<h1> Taller MySQL II: Tienda de Videojuegos Data Base 🎮</h1>

Este sistema está enfocado en cubrir los aspectos fundamentales de la administración académica, incluyendo estudiantes, cursos, docentes, aulas y horarios. A continuación podrás ver el desarrollo y normalización de esta base de datos:

## Tabla de Contenidos
- [Instalación](#instalación)
- [Diagrama Lógico](#diagrama)
- [Entidad-Relación](#entidad-relación)
- [Consultas](#consultas)
- [Contacto](#contacto)

## Instalación
1. Clona este repositorio, para obtener una copia local del proyecto:
   ```bash
   git clone https://github.com/LauraAmaya08/TiendaVideojuegos_LuisMendezLauraAmaya-
   ```

## Diagrama
<img src="images/ERDDiagram.jpg" alt="Diagrama de relación de entidad" width="auto" />

## Entidad-Relación

1. **Plataforma**
   - **Atributos**:
     - `id_plataforma`: Identificador único de la plataforma.
     - `nombre`: Nombre de la plataforma.

2. **Categoría**
   - **Atributos**:
     - `id_categoria`: Identificador único de la categoría.
     - `nombre`: Nombre de la categoría.

3. **Género**
   - **Atributos**:
     - `id_genero`: Identificador único del género.
     - `nombre`: Nombre del género.

4. **Clasificación de Edades**
   - **Atributos**:
     - `id_clasificacion`: Identificador único de la clasificación.
     - `clasificacion`: Descripción de la clasificación (ej. "18+").

5. **Características del Videojuego**
   - **Atributos**:
     - `id_videojuego`: Identificador único del videojuego.
     - `id_clasificacion`: Referencia a la clasificación del videojuego.

6. **Plataformas del Videojuego**
   - **Atributos**:
     - `id`: Identificador único de la relación.
     - `id_plataforma`: Referencia a la plataforma.
     - `id_videojuego`: Referencia al videojuego.

7. **Géneros del Videojuego**
   - **Atributos**:
     - `id`: Identificador único de la relación.
     - `id_genero`: Referencia al género.
     - `id_videojuego`: Referencia al videojuego.

8. **Producto**
   - **Atributos**:
     - `id_producto`: Identificador único del producto.
     - `nombre`: Nombre del producto.
     - `descripcion`: Descripción del producto.
     - `id_categoria`: Referencia a la categoría del producto.
     - `precio`: Precio del producto.
     - `stock`: Cantidad disponible.
     - `id_videojuego`: Referencia al videojuego.

9. **Ciudad**
   - **Atributos**:
     - `id_ciudad`: Identificador único de la ciudad.
     - `nombre`: Nombre de la ciudad.

10. **Dirección**
    - **Atributos**:
      - `id_direccion`: Identificador único de la dirección.
      - `direccion`: Dirección específica.
      - `id_ciudad`: Referencia a la ciudad.

11. **Cliente**
    - **Atributos**:
      - `id_cliente`: Identificador único del cliente.
      - `nombre`: Nombre del cliente.
      - `correo`: Correo electrónico del cliente.
      - `id_direccion`: Referencia a la dirección.
      - `telefono`: Número de teléfono.

12. **Puesto de Trabajo**
    - **Atributos**:
      - `id_puesto`: Identificador único del puesto.
      - `nombre`: Nombre del puesto.

13. **Empleado**
    - **Atributos**:
      - `id_empleado`: Identificador único del empleado.
      - `nombre`: Nombre del empleado.
      - `id_puesto`: Referencia al puesto de trabajo.
      - `fecha_contratacion`: Fecha de contratación.

14. **Venta**
    - **Atributos**:
      - `id_venta`: Identificador único de la venta.
      - `fecha`: Fecha de la venta.
      - `id_cliente`: Referencia al cliente.
      - `id_empleado`: Referencia al empleado.

15. **Proveedor**
    - **Atributos**:
      - `id_proveedor`: Identificador único del proveedor.
      - `nombre`: Nombre del proveedor.
      - `contacto_proveedor`: Información de contacto.
      - `telefono`: Número de teléfono.
      - `id_direccion`: Referencia a la dirección.

16. **Orden de Proveedor**
    - **Atributos**:
      - `id_orden_proveedor`: Identificador único de la orden.
      - `fecha`: Fecha de la orden.
      - `id_proveedor`: Referencia al proveedor.

17. **Productos de Orden**
    - **Atributos**:
      - `id`: Identificador único de la relación.
      - `id_orden_proveedor`: Referencia a la orden.
      - `id_producto`: Referencia al producto.
      - `cantidad`: Cantidad del producto en la orden.

18. **Productos de Venta**
    - **Atributos**:
      - `id`: Identificador único de la relación.
      - `id_venta`: Referencia a la venta.
      - `id_producto`: Referencia al producto.
      - `cantidad`: Cantidad del producto vendido.


## Relaciones
1. **Videojuegos y Clasificación de Edades**
   - **Relación**: Un videojuego puede tener una única clasificación de edad.
   - **Tipo**: Uno a Muchos (1:N)
   - **Entidades**: `caracteristicas_videojuego` → `clasificacion_edades`

2. **Plataformas y Videojuegos**
   - **Relación**: Un videojuego puede estar disponible en varias plataformas.
   - **Tipo**: Muchos a Muchos (N:M)
   - **Entidades**: `plataformas_de_videojuego` (tabla intermedia) conecta `plataforma` y `caracteristicas_videojuego`.

3. **Géneros y Videojuegos**
   - **Relación**: Un videojuego puede pertenecer a múltiples géneros.
   - **Tipo**: Muchos a Muchos (N:M)
   - **Entidades**: `generos_de_videojuego` (tabla intermedia) conecta `genero` y `caracteristicas_videojuego`.

4. **Productos y Categorías**
   - **Relación**: Un producto pertenece a una única categoría, pero una categoría puede tener múltiples productos.
   - **Tipo**: Uno a Muchos (1:N)
   - **Entidades**: `producto` → `categoria`

5. **Clientes y Ventas**
   - **Relación**: Un cliente puede realizar múltiples ventas, pero cada venta corresponde a un único cliente.
   - **Tipo**: Uno a Muchos (1:N)
   - **Entidades**: `Venta` → `Cliente`

6. **Empleados y Ventas**
   - **Relación**: Un empleado puede manejar múltiples ventas, pero cada venta es realizada por un único empleado.
   - **Tipo**: Uno a Muchos (1:N)
   - **Entidades**: `Venta` → `Empleado`

7. **Proveedores y Órdenes**
   - **Relación**: Un proveedor puede tener múltiples órdenes de compra, pero cada orden corresponde a un único proveedor.
   - **Tipo**: Uno a Muchos (1:N)
   - **Entidades**: `Orden_proveedor` → `Proveedor`

8. **Órdenes y Productos**
   - **Relación**: Una orden puede incluir múltiples productos, y un producto puede estar en múltiples órdenes.
   - **Tipo**: Muchos a Muchos (N:M)
   - **Entidades**: `Productos_orden` (tabla intermedia) conecta `Orden_proveedor` y `producto`.

9. **Ventas y Productos**
   - **Relación**: Una venta puede incluir múltiples productos, y un producto puede estar presente en múltiples ventas.
   - **Tipo**: Muchos a Muchos (N:M)
   - **Entidades**: `Productos_venta` (tabla intermedia) conecta `Venta` y `producto`.


## Contacto
Para cualquier pregunta o sugerencia, por favor contacta a:
- **Nombre:** Laura Amaya / Nicolas Mendez
- **Email:** laurasofiaamayacasado@gmail.com / nicolas-mendez@hotmail.com

