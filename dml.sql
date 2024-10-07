-- Insertar datos en la tabla plataforma
INSERT INTO plataforma (id_plataforma, nombre) VALUES
(1, 'PC'),
(2, 'PlayStation 5'),
(3, 'Xbox Series X'),
(4, 'Nintendo Switch'),
(5, 'PlayStation 4'),
(6, 'Xbox One'),
(7, 'PC VR'),
(8, 'Mobile'),
(9, 'Nintendo 3DS'),
(10, 'PlayStation Vita'),
(11, 'Xbox 360'),
(12, 'GameCube'),
(13, 'Wii'),
(14, 'PSP'),
(15, 'Neo Geo'),
(16, 'Dreamcast'),
(17, 'Atari'),
(18, 'Ouya'),
(19, 'Google Stadia'),
(20, 'Apple Arcade'),
(21, 'Epic Games Store'),
(22, 'Steam'),
(23, 'Origin'),
(24, 'Battle.net'),
(25, 'GOG'),
(26, 'Itch.io'),
(27, 'Roblox'),
(28, 'Twitch'),
(29, 'Humble Bundle'),
(30, 'Bandcamp');


-- Insertar datos categorías
INSERT INTO categoria (id_categoria, nombre) VALUES
(1, 'Consola'),
(2, 'Videojuego'),
(3, 'Accesorios');

-- Insertar datos en la tabla genero
INSERT INTO genero (id_genero, nombre) VALUES
(1, 'Acción'),
(2, 'Aventura'),
(3, 'RPG'),
(4, 'Deportes'),
(5, 'Simulación'),
(6, 'Estrategia'),
(7, 'Horror'),
(8, 'Fantasía'),
(9, 'Ciencia ficción'),
(10, 'Historia'),
(11, 'Misterio'),
(12, 'Comedia'),
(13, 'Drama'),
(14, 'Terror'),
(15, 'Acción/Aventura'),
(16, 'Shooter'),
(17, 'Battle Royale'),
(18, 'Platformer'),
(19, 'Survival Horror'),
(20, 'Multijugador'),
(21, 'Narrativo'),
(22, 'Indie'),
(23, 'Móvil'),
(24, 'Aventura gráfica'),
(25, 'Carreras'),
(26, 'Sandbox'),
(27, 'Estrategia en tiempo real'),
(28, 'Simulador de vida'),
(29, 'Género de cartas'),
(30, 'Roguelike');

-- Insertar datos en la tabla clasificacion_edades
INSERT INTO clasificacion_edades (id_clasificacion, clasificacion) VALUES
(1, 'E'),
(2, '10+'),
(3, '12+'),
(4, '16+'),
(5, '18+'),
(6, 'PG'),
(7, 'G'),
(8, 'M'),
(9, 'T');

-- Insertar datos en la tabla caracteristicas_videojuego
INSERT INTO caracteristicas_videojuego (id_videojuego, id_clasificacion) VALUES
(1, 5),  -- The Last of Us Part II - 18+
(2, 5),  -- Ghost of Tsushima - 18+
(3, 5),  -- Cyberpunk 2077 - 18+
(4, 3),  -- FIFA 23 - 12+
(5, 5),  -- Call of Duty: Modern Warfare - 18+
(6, 5),  -- God of War - 18+
(7, 5),  -- Assassin's Creed Valhalla - 18+
(8, 5),  -- Spider-Man: Miles Morales - 14+
(9, 5),  -- Mortal Kombat 11 - 18+
(10, 3), -- FIFA 22 - 12+
(11, 7), -- The Legend of Zelda: Breath of the Wild - G
(12, 7), -- Mario Kart 8 Deluxe - G
(13, 5), -- Demon's Souls - 18+
(14, 5), -- Ratchet & Clank: Rift Apart - 12+
(15, 5), -- Resident Evil Village - 18+
(16, 5), -- Final Fantasy VII Remake - 18+
(17, 7), -- Super Mario Odyssey - G
(18, 5), -- The Evil Within - 18+
(19, 5), -- Horizon Forbidden West - 18+
(20, 5); -- Monster Hunter: Rise - 18+

-- Insertar datos en la tabla plataformas_de_videojuego
INSERT INTO plataformas_de_videojuego (id, id_plataforma, id_videojuego) VALUES
(1, 1, 4),  -- The Last of Us Part II en PC
(2, 2, 4),  -- The Last of Us Part II en PlayStation 5
(3, 2, 5),  -- Ghost of Tsushima en PlayStation 5
(4, 1, 6),  -- Cyberpunk 2077 en PC
(5, 2, 7),  -- FIFA 23 en PlayStation 5
(6, 3, 7),  -- FIFA 23 en Xbox Series X
(7, 4, 7),  -- FIFA 23 en Nintendo Switch
(8, 2, 8),  -- Call of Duty: Modern Warfare en PlayStation 5
(9, 1, 8),  -- Call of Duty: Modern Warfare en PC
(10, 1, 12), -- God of War en PC
(11, 2, 12), -- God of War en PlayStation 5
(12, 1, 13), -- Assassin's Creed Valhalla en PC
(13, 2, 13), -- Assassin's Creed Valhalla en PlayStation 5
(14, 1, 14), -- Spider-Man: Miles Morales en PC
(15, 2, 14), -- Spider-Man: Miles Morales en PlayStation 5
(16, 1, 15), -- Mortal Kombat 11 en PC
(17, 2, 15), -- Mortal Kombat 11 en PlayStation 5
(18, 4, 16), -- FIFA 22 en Nintendo Switch
(19, 2, 17), -- The Legend of Zelda: Breath of the Wild en PlayStation 5
(20, 4, 17), -- The Legend of Zelda: Breath of the Wild en Nintendo Switch
(21, 4, 18), -- Mario Kart 8 Deluxe en Nintendo Switch
(22, 1, 23), -- Demon's Souls en PC
(23, 2, 23), -- Demon's Souls en PlayStation 5
(24, 1, 24), -- Ratchet & Clank: Rift Apart en PC
(25, 2, 24), -- Ratchet & Clank: Rift Apart en PlayStation 5
(26, 1, 25), -- Resident Evil Village en PC
(27, 2, 25), -- Resident Evil Village en PlayStation 5
(28, 1, 26), -- Final Fantasy VII Remake en PC
(29, 2, 26), -- Final Fantasy VII Remake en PlayStation 5
(30, 4, 27), -- Super Mario Odyssey en Nintendo Switch
(31, 2, 31), -- The Evil Within en PlayStation 5
(32, 1, 31), -- The Evil Within en PC
(33, 2, 32), -- Horizon Forbidden West en PlayStation 5
(34, 4, 33); -- Monster Hunter: Rise en Nintendo Switch

-- Insertar datos en la tabla generos_de_videojuego
INSERT INTO generos_de_videojuego (id, id_genero, id_videojuego) VALUES
(1, 1, 4),  -- The Last of Us Part II: Acción
(2, 2, 4),  -- The Last of Us Part II: Aventura
(3, 1, 5),  -- Ghost of Tsushima: Acción
(4, 2, 5),  -- Ghost of Tsushima: Aventura
(5, 3, 6),  -- Cyberpunk 2077: RPG
(6, 1, 6),  -- Cyberpunk 2077: Acción
(7, 4, 7),  -- FIFA 23: Deportes
(8, 20, 7), -- FIFA 23: Multijugador
(9, 1, 8),  -- Call of Duty: Modern Warfare: Acción
(10, 16, 8), -- Call of Duty: Modern Warfare: Shooter
(11, 1, 12), -- God of War: Acción
(12, 2, 12), -- God of War: Aventura
(13, 1, 13), -- Assassin's Creed Valhalla: Acción
(14, 2, 13), -- Assassin's Creed Valhalla: Aventura
(15, 3, 14), -- Spider-Man: Miles Morales: Acción
(16, 2, 14), -- Spider-Man: Miles Morales: Aventura
(17, 4, 15), -- Mortal Kombat 11: Lucha
(18, 20, 15), -- Mortal Kombat 11: Multijugador
(19, 4, 16), -- FIFA 22: Deportes
(20, 1, 17), -- The Legend of Zelda: Breath of the Wild: Acción
(21, 2, 17), -- The Legend of Zelda: Breath of the Wild: Aventura
(22, 4, 18), -- Mario Kart 8 Deluxe: Carreras
(23, 1, 23), -- Demon's Souls: Acción
(24, 3, 23), -- Demon's Souls: RPG
(25, 1, 24), -- Ratchet & Clank: Rift Apart: Acción
(26, 2, 24), -- Ratchet & Clank: Rift Apart: Aventura
(27, 1, 25), -- Resident Evil Village: Acción
(28, 7, 25), -- Resident Evil Village: Horror
(29, 3, 26), -- Final Fantasy VII Remake: RPG
(30, 1, 27), -- Super Mario Odyssey: Acción
(31, 2, 31), -- The Evil Within: Horror
(32, 4, 32), -- Horizon Forbidden West: Acción
(33, 2, 33); -- Monster Hunter: Rise: Acción

-- Insertar datos en la tabla producto
INSERT INTO producto (id_producto, nombre, descripcion, id_categoria, precio, stock, id_videojuego) VALUES
(1, 'PlayStation 5', 'Consola de última generación de Sony.', 1, 499.99, 50, NULL),
(2, 'Xbox Series X', 'Consola de última generación de Microsoft.', 1, 499.99, 50, NULL),
(3, 'Nintendo Switch', 'Consola híbrida, juega en casa o en movimiento.', 1, 299.99, 100, NULL),
(4, 'The Last of Us Part II', 'Aventura y acción post-apocalíptica.', 2, 59.99, 100, 1),
(5, 'Ghost of Tsushima', 'Juego de samuráis en un mundo abierto.', 2, 49.99, 150, 2),
(6, 'Cyberpunk 2077', 'Juego de rol y acción en un mundo futurista.', 2, 39.99, 200, 3),
(7, 'FIFA 23', 'Simulación de fútbol, juega en modo carrera o en línea.', 2, 59.99, 250, 4),
(8, 'Call of Duty: Modern Warfare', 'Shooter en primera persona con multijugador.', 2, 59.99, 300, 5),
(9, 'Control DualSense para PS5', 'Mando con tecnología háptica para PS5.', 3, 69.99, 200, NULL),
(10, 'Xbox Wireless Controller', 'Mando inalámbrico para Xbox.', 3, 59.99, 150, NULL),
(11, 'Nintendo Pro Controller', 'Controlador profesional para Nintendo Switch.', 3, 69.99, 120, NULL),
(12, 'God of War', 'Aventura de acción basada en la mitología nórdica.', 2, 39.99, 200, 6),
(13, 'Assassin\'s Creed Valhalla', 'Explora la era vikinga en este RPG de acción.', 2, 59.99, 100, 7),
(14, 'Spider-Man: Miles Morales', 'Aventura de acción con el famoso héroe de Marvel.', 2, 49.99, 150, 8),
(15, 'Mortal Kombat 11', 'Juego de lucha icónico con gráficos impresionantes.', 2, 39.99, 200, 9),
(16, 'FIFA 22', 'Simulación de fútbol, juega en modo carrera o en línea.', 2, 49.99, 80, 10),
(17, 'The Legend of Zelda: Breath of the Wild', 'Aventura de mundo abierto en Hyrule.', 2, 59.99, 60, 11),
(18, 'Mario Kart 8 Deluxe', 'Carreras locas con personajes de Mario.', 2, 49.99, 75, 12),
(19, 'PS5 DualSense Charging Station', 'Estación de carga para el control DualSense.', 3, 29.99, 150, NULL),
(20, 'Razer Kraken Gaming Headset', 'Auriculares gaming de alta calidad.', 3, 79.99, 200, NULL),
(21, 'Logitech G502 Hero', 'Ratón gaming con alta precisión.', 3, 49.99, 175, NULL),
(22, 'Thrustmaster T150 Racing Wheel', 'Volante de carreras para una experiencia inmersiva.', 3, 199.99, 80, NULL),
(23, 'Demon\'s Souls', 'Remake del clásico juego de acción y rol.', 2, 69.99, 30, 13),
(24, 'Ratchet & Clank: Rift Apart', 'Aventura de plataformas en mundos paralelos.', 2, 69.99, 20, 14),
(25, 'Resident Evil Village', 'Horror y acción en un pueblo misterioso.', 2, 59.99, 100, 15),
(26, 'Final Fantasy VII Remake', 'Remake del clásico RPG japonés.', 2, 59.99, 80, 16),
(27, 'Super Mario Odyssey', 'Aventura en 3D con Mario por todo el mundo.', 2, 49.99, 120, 17),
(28, 'Nintendo Switch Joy-Con', 'Controladores adicionales para Nintendo Switch.', 3, 79.99, 90, NULL),
(29, 'PS5 DualSense Wireless Controller', 'Mando inalámbrico para PS5.', 3, 69.99, 100, NULL),
(30, 'Xbox Series S', 'Consola de menor precio con gran rendimiento.', 1, 299.99, 40, NULL),
(31, 'The Evil Within', 'Juego de horror y supervivencia de Shinji Mikami.', 2, 29.99, 100, 18),
(32, 'Horizon Forbidden West', 'Aventura de acción en un mundo post-apocalíptico lleno de máquinas.', 2, 59.99, 100, 19),
(33, 'Monster Hunter: Rise', 'Juego de acción y rol donde cazas monstruos en un mundo vibrante.', 2, 49.99, 120, 20);

-- Insercion datos Ciudad
INSERT INTO Ciudad (id_ciudad, nombre) VALUES
(1, 'Bogotá'),
(2, 'Medellín'),
(3, 'Cali'),
(4, 'Cartagena'),
(5, 'Barranquilla'),
(6, 'Manizales'),
(7, 'Pereira'),
(8, 'Bucaramanga'),
(9, 'Armenia'),
(10, 'Popayán'),
(11, 'Santa Marta'),
(12, 'Villavicencio'),
(13, 'Neiva'),
(14, 'Ibagué'),
(15, 'Pasto'),
(16, 'Cúcuta'),
(17, 'Montería'),
(18, 'Sincelejo'),
(19, 'Riohacha'),
(20, 'Tunja'),
(21, 'Florencia'),
(22, 'Quibdó'),
(23, 'Leticia'),
(24, 'San Andrés'),
(25, 'Yopal'),
(26, 'Valledupar'),
(27, 'Rionegro'),
(28, 'Chía'),
(29, 'Zipaquirá'),
(30, 'Facatativá');

-- Insercion datos Direccion
INSERT INTO Direccion (id_direccion, direccion, id_ciudad) VALUES
(1, 'Calle 123 #45-67', 1),
(2, 'Carrera 9 #89-12', 2),
(3, 'Avenida Siempre Viva #742', 3),
(4, 'Calle 10 #25-50', 4),
(5, 'Carrera 7 #10-30', 5),
(6, 'Calle 44 #77-99', 6),
(7, 'Avenida Las Palmas #80-20', 7),
(8, 'Calle 8 #24-67', 8),
(9, 'Carrera 11 #14-21', 9),
(10, 'Calle 20 #5-15', 10),
(11, 'Carrera 13 #23-55', 11),
(12, 'Calle 60 #20-18', 12),
(13, 'Carrera 18 #40-30', 13),
(14, 'Avenida 4 Norte #22-80', 14),
(15, 'Carrera 12 #16-33', 15),
(16, 'Calle 77 #14-45', 16),
(17, 'Carrera 5 #11-67', 17),
(18, 'Calle 89 #55-70', 18),
(19, 'Avenida del Río #12-34', 19),
(20, 'Carrera 7 #50-60', 20),
(21, 'Calle 2 #3-4', 21),
(22, 'Carrera 9 #2-10', 22),
(23, 'Calle 13 #44-55', 23),
(24, 'Carrera 15 #8-9', 24),
(25, 'Calle 55 #9-11', 25),
(26, 'Carrera 18 #9-4', 26),
(27, 'Calle 100 #30-50', 27),
(28, 'Carrera 45 #21-33', 28),
(29, 'Calle 12 #4-10', 29),
(30, 'Carrera 34 #22-18', 30);

-- Insercion datos Cliente
INSERT INTO Cliente (id_cliente, nombre, correo, id_direccion, telefono) VALUES
(1, 'Carlos Perez', 'carlos.perez@gmail.com', 1, '3101234567'),
(2, 'Ana Gomez', 'ana.gomez@hotmail.com', 2, '3209876543'),
(3, 'Luis Rodriguez', 'luis.rodriguez@yahoo.com', 3, '3001122334'),
(4, 'Paula Suarez', 'paula.suarez@gmail.com', 4, '3118765432'),
(5, 'Ricardo Torres', 'ricardo.torres@gmail.com', 5, '3145678901'),
(6, 'Sofia Morales', 'sofia.morales@gmail.com', 6, '3105674321'),
(7, 'Andres Orozco', 'andres.orozco@hotmail.com', 7, '3156789012'),
(8, 'Laura Pineda', 'laura.pineda@yahoo.com', 8, '3123456789'),
(9, 'Felipe Medina', 'felipe.medina@gmail.com', 9, '3138901234'),
(10, 'Camila Salazar', 'camila.salazar@hotmail.com', 10, '3141239876'),
(11, 'Daniela Carrillo', 'daniela.carrillo@gmail.com', 11, '3100001111'),
(12, 'Fernando Vega', 'fernando.vega@gmail.com', 12, '3167890123'),
(13, 'Juliana Alvarez', 'juliana.alvarez@yahoo.com', 13, '3191234567'),
(14, 'Cristian Rojas', 'cristian.rojas@hotmail.com', 14, '3208903456'),
(15, 'Diana Reyes', 'diana.reyes@gmail.com', 15, '3109876543'),
(16, 'Gabriel Herrera', 'gabriel.herrera@hotmail.com', 16, '3135678901'),
(17, 'Jessica Arias', 'jessica.arias@gmail.com', 17, '3107654321'),
(18, 'Juan Lopez', 'juan.lopez@hotmail.com', 18, '3154567890'),
(19, 'Nicolas Ramirez', 'nicolas.ramirez@gmail.com', 19, '3142345678'),
(20, 'Mariana Escobar', 'mariana.escobar@yahoo.com', 20, '3190987654'),
(21, 'Samuel Rivera', 'samuel.rivera@gmail.com', 21, '3174567890'),
(22, 'Tatiana Cruz', 'tatiana.cruz@hotmail.com', 22, '3129876543'),
(23, 'Sebastian Duarte', 'sebastian.duarte@gmail.com', 23, '3161234567'),
(24, 'Liliana Cardenas', 'liliana.cardenas@hotmail.com', 24, '3182345678'),
(25, 'Oscar Mejia', 'oscar.mejia@gmail.com', 25, '3205678901'),
(26, 'Angela Restrepo', 'angela.restrepo@gmail.com', 26, '3123456789'),
(27, 'Mateo Galindo', 'mateo.galindo@hotmail.com', 27, '3158901234'),
(28, 'Maria Jose Castro', 'maria.castro@gmail.com', 28, '3136789012'),
(29, 'Julio Gomez', 'julio.gomez@hotmail.com', 29, '3108765432'),
(30, 'Valentina Ruiz', 'valentina.ruiz@gmail.com', 30, '3192345678');

-- Insercion datos Puesto de trabajo
INSERT INTO Puesto_trabajo (id_puesto, nombre) VALUES
(1, 'Cajero'),
(2, 'Vendedor'),
(3, 'Gerente'),
(4, 'Administrador'),
(5, 'Recepcionista'),
(6, 'Almacenista'),
(7, 'Encargado de Logística'),
(8, 'Jefe de Personal'),
(9, 'Supervisor de Ventas'),
(10, 'Soporte Técnico');

-- Insercion datos Empleado
INSERT INTO Empleado (id_empleado, nombre, id_puesto, fecha_contratacion) VALUES
(1, 'Juan Torres', 1, '2022-01-15'),
(2, 'Maria Fernandez', 2, '2021-05-10'),
(3, 'Pedro Lopez', 3, '2020-08-01'),
(4, 'Luisa Gomez', 4, '2020-03-21'),
(5, 'Camilo Vargas', 5, '2019-12-30'),
(6, 'Daniel Ortiz', 6, '2022-07-15'),
(7, 'Fernanda Perez', 7, '2022-02-28'),
(8, 'Laura Morales', 8, '2021-11-18'),
(9, 'Carlos Martinez', 9, '2021-08-22'),
(10, 'Carolina Reyes', 10, '2020-09-01'),
(11, 'Diego Andrade', 1, '2023-01-10'),
(12, 'Natalia Hernandez', 2, '2022-04-25'),
(13, 'Ricardo Alvarez', 3, '2021-09-15'),
(14, 'Claudia Moreno', 4, '2020-12-01'),
(15, 'Jaime Torres', 5, '2019-10-15'),
(16, 'Tatiana Sanchez', 6, '2021-05-30'),
(17, 'Esteban Rojas', 7, '2020-03-05'),
(18, 'Margarita Prieto', 8, '2021-06-18'),
(19, 'Santiago Ramirez', 9, '2021-08-10'),
(20, 'Susana Vargas', 10, '2019-11-28'),
(21, 'David Castillo', 1, '2023-02-14'),
(22, 'Andrea Pineda', 2, '2022-06-21'),
(23, 'Jorge Cardenas', 3, '2020-01-30'),
(24, 'Liliana Jimenez', 4, '2020-04-11'),
(25, 'Oscar Medina', 5, '2019-08-16'),
(26, 'Cristina Ocampo', 6, '2022-07-01'),
(27, 'Felipe Naranjo', 7, '2021-10-19'),
(28, 'Camila Beltran', 8, '2021-01-20'),
(29, 'Alvaro Suarez', 9, '2020-06-12'),
(30, 'Luisa Zapata', 10, '2023-03-25');

-- Insercion datos Venta
INSERT INTO Venta (id_venta, fecha, id_cliente, id_empleado) VALUES
(1, '2023-04-01', 1, 2),
(2, '2023-05-15', 3, 4),
(3, '2023-06-12', 5, 6),
(4, '2023-07-20', 7, 8),
(5, '2023-08-01', 9, 10),
(6, '2023-04-21', 2, 1),
(7, '2023-05-03', 4, 3),
(8, '2023-06-18', 6, 5),
(9, '2023-07-29', 8, 7),
(10, '2023-08-10', 10, 9),
(11, '2023-04-05', 11, 2),
(12, '2023-05-25', 13, 4),
(13, '2023-06-22', 15, 6),
(14, '2023-07-30', 17, 8),
(15, '2023-08-15', 19, 10),
(16, '2023-04-10', 12, 1),
(17, '2023-05-07', 14, 3),
(18, '2023-06-25', 16, 5),
(19, '2023-07-18', 18, 7),
(20, '2023-08-25', 20, 9),
(21, '2023-04-20', 21, 2),
(22, '2023-05-17', 22, 4),
(23, '2023-06-27', 23, 6),
(24, '2023-07-19', 24, 8),
(25, '2023-08-30', 25, 10),
(26, '2023-04-30', 26, 1),
(27, '2023-05-19', 27, 3),
(28, '2023-06-29', 28, 5),
(29, '2023-07-25', 29, 7),
(30, '2023-08-28', 30, 9);

-- Insercion datos Proveedor
INSERT INTO Proveedor (id_proveedor, nombre, contacto_proveedor, telefono, id_direccion) VALUES
(1, 'Sony Interactive Entertainment', 'contacto@sony.com', '3001234567', 1),
(2, 'Microsoft Studios', 'contacto@microsoft.com', '3002345678', 2),
(3, 'Nintendo', 'contacto@nintendo.com', '3003456789', 3),
(4, 'Electronic Arts', 'contacto@ea.com', '3004567890', 4),
(5, 'Ubisoft', 'contacto@ubisoft.com', '3005678901', 5),
(6, 'CD Projekt', 'contacto@cdprojekt.com', '3006789012', 6),
(7, 'Activision', 'contacto@activision.com', '3007890123', 7),
(8, 'Rockstar Games', 'contacto@rockstargames.com', '3008901234', 8),
(9, 'Square Enix', 'contacto@square-enix.com', '3009012345', 9),
(10, 'Capcom', 'contacto@capcom.com', '3010123456', 10),
(11, 'Bethesda Softworks', 'contacto@bethesda.com', '3011234567', 11),
(12, 'Take-Two Interactive', 'contacto@take2.com', '3012345678', 12),
(13, 'Bandai Namco Entertainment', 'contacto@bandainamco.com', '3013456789', 13),
(14, 'Epic Games', 'contacto@epicgames.com', '3014567890', 14),
(15, 'Razer', 'contacto@razer.com', '3015678901', 15),
(16, 'Logitech', 'contacto@logitech.com', '3016789012', 16),
(17, 'Thrustmaster', 'contacto@thrustmaster.com', '3017890123', 17),
(18, 'Corsair', 'contacto@corsair.com', '3018901234', 18),
(19, 'NVIDIA', 'contacto@nvidia.com', '3019012345', 19),
(20, 'ASUS', 'contacto@asus.com', '3020123456', 20),
(21, 'HyperX', 'contacto@hyperx.com', '3021234567', 21),
(22, 'SteelSeries', 'contacto@steelseries.com', '3022345678', 22),
(23, 'Turtle Beach', 'contacto@turtlebeach.com', '3023456789', 23),
(24, 'Acer', 'contacto@acer.com', '3024567890', 24),
(25, 'Dell', 'contacto@dell.com', '3025678901', 25),
(26, 'HP', 'contacto@hp.com', '3026789012', 26),
(27, 'Lenovo', 'contacto@lenovo.com', '3027890123', 27),
(28, 'Sega', 'contacto@sega.com', '3028901234', 28),
(29, 'Atlus', 'contacto@atlus.com', '3029012345', 29),
(30, 'Valve', 'contacto@valvesoftware.com', '3030123456', 30);

-- Insercion datos Orden de proveedor
INSERT INTO Orden_proveedor (id_orden_proveedor, fecha, id_proveedor) VALUES
(1, '2024-01-10', 1),
(2, '2024-02-15', 2),
(3, '2024-03-20', 3),
(4, '2024-04-05', 4),
(5, '2024-05-12', 5),
(6, '2024-06-17', 6),
(7, '2024-07-22', 7),
(8, '2024-08-14', 8),
(9, '2024-09-19', 9),
(10, '2024-10-25', 10);

INSERT INTO Productos_orden (id, id_orden_proveedor, id_producto, cantidad) VALUES
(1, 1, 1, 10),
(2, 1, 4, 5),
(3, 2, 2, 15),
(4, 2, 5, 8),
(5, 3, 3, 12),
(6, 3, 6, 7),
(7, 4, 7, 20),
(8, 4, 8, 15),
(9, 5, 9, 10),
(10, 5, 10, 12),
(11, 6, 11, 14),
(12, 6, 12, 10),
(13, 7, 13, 6),
(14, 7, 14, 8),
(15, 8, 15, 5),
(16, 8, 16, 4),
(17, 9, 17, 3),
(18, 9, 18, 6),
(19, 10, 19, 10),
(20, 10, 20, 5);

INSERT INTO Productos_venta (id, id_venta, id_producto, cantidad) VALUES
(1, 1, 1, 1),
(2, 1, 4, 1),
(3, 2, 2, 2),
(4, 2, 5, 1),
(5, 3, 3, 3),
(6, 3, 6, 1),
(7, 4, 7, 2),
(8, 4, 8, 1),
(9, 5, 9, 2),
(10, 5, 10, 1),
(11, 6, 11, 1),
(12, 6, 12, 2),
(13, 7, 13, 2),
(14, 7, 14, 1),
(15, 8, 15, 1),
(16, 8, 16, 1),
(17, 9, 17, 1),
(18, 9, 18, 2),
(19, 10, 19, 2),
(20, 10, 20, 1);
