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


-- Insertar datos en la tabla plataformas_de_videojuego


-- Insertar datos en la tabla generos_de_videojuego


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
(30, 'Xbox Series S', 'Consola de menor precio con gran rendimiento.', 1, 299.99, 40, NULL)
(31, 'The Evil Within', 'Juego de horror y supervivencia de Shinji Mikami.', 2, 29.99, 100, 18),
(32, 'Horizon Forbidden West', 'Aventura de acción en un mundo post-apocalíptico lleno de máquinas.', 2, 59.99, 100, 19),
(33, 'Monster Hunter: Rise', 'Juego de acción y rol donde cazas monstruos en un mundo vibrante.', 2, 49.99, 120, 20);


-- Insertar datos en la tabla caracteristicas_videojuego
INSERT INTO caracteristicas_videojuego (id_videojuego, id_clasificacion) VALUES
