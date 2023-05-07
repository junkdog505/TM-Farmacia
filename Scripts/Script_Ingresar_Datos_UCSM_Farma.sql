USE farmacia;
-- Insertar ejemplo de Cliente
INSERT INTO Cliente (IdCliente, Nombre, Direccion, Telefono, Correo, Contrasena)
VALUES (0001, 'Juan Pérez', 'Av Arequipa 2023', '987654321', 'juan.perez@ucsm.com', 'contraseña123');
INSERT INTO Cliente (IdCliente, Nombre, Direccion, Telefono, Correo, Contrasena)
VALUES (0002, 'María Rodríguez', 'Calle Tacna 789', '951234567', 'maria.rodriguez@ucsm.com', 'pass123');
INSERT INTO Cliente (IdCliente, Nombre, Direccion, Telefono, Correo, Contrasena)
VALUES (0003, 'Pedro Gómez', 'Jr. Puno 456', '987987987', 'pedro.gomez@ucsm.com', 'abc123');
INSERT INTO Cliente (IdCliente, Nombre, Direccion, Telefono, Correo, Contrasena)
VALUES (0004, 'Ana Torres', 'Av. Huancayo 321', '999888777', 'ana.torres@ucsm.com', 'passw0rd');
INSERT INTO Cliente (IdCliente, Nombre, Direccion, Telefono, Correo, Contrasena)
VALUES (0005, 'Luis García', 'Jr. Cusco 987', '966677788', 'luis.garcia@ucsm.com', 'qwe123');
INSERT INTO Cliente (IdCliente, Nombre, Direccion, Telefono, Correo, Contrasena)
VALUES (0006, 'Carla Sánchez', 'Av. Ayacucho 654', '955443322', 'carla.sanchez@ucsm.com', 'p4ssw0rd');

-- Insertar ejemplo de Sucursal
INSERT INTO Sucursal (Nombre, Direccion, Ubicacion)
VALUES ('Sucursal A', 'Av. Ejercito 505', 'Arequipa');
INSERT INTO Sucursal (Nombre, Direccion, Ubicacion)
VALUES ('Sucursal B', 'Av. Chancas 456', 'Lima');
INSERT INTO Sucursal (Nombre, Direccion, Ubicacion)
VALUES ('Sucursal C', 'Av. Centenario', 'Ucayali');

-- Insertar ejemplo de productos
-- Insertar ejemplos de productos de Venta Libre
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Paracetamol', 'Venta Libre', 'Alivia el dolor y la fiebre', 100, 5.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Pastillas para la gripe', 'Venta Libre', 'Alivio de los síntomas de la gripe', 50, 7.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Antihistamínico', 'Venta Libre', 'Tratamiento para las alergias', 60, 9.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Antiácido', 'Venta Libre', 'Alivio de la acidez estomacal', 80, 4.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Jarabe para la tos', 'Venta Libre', 'Alivio de la tos seca', 70, 6.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Pastillas para la acidez', 'Venta Libre', 'Alivio de la acidez estomacal', 90, 3.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Crema analgésica', 'Venta Libre', 'Alivio del dolor muscular', 40, 8.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Solución para lentes de contacto', 'Venta Libre', 'Limpieza y humectación de lentes', 30, 6.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Pastillas para el mareo', 'Venta Libre', 'Alivio del mareo y la náusea', 50, 5.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Parches para dolores musculares', 'Venta Libre', 'Alivio de dolores musculares y articulares', 60, 9.99);
-- Insertar ejemplos de productos con receta
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Antibiótico', 'Con Receta', 'Tratamiento de infecciones bacterianas', 50, 12.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Ansiolítico', 'Con Receta', 'Reducción de la ansiedad y el estrés', 30, 15.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Antidepresivo', 'Con Receta', 'Tratamiento de la depresión', 40, 19.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Antiinflamatorio', 'Con Receta', 'Reducción de la inflamación y el dolor', 60, 11.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Hipertensión', 'Con Receta', 'Control de la presión arterial alta', 35, 17.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Antialérgico', 'Con Receta', 'Tratamiento de las alergias', 45, 13.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Tratamiento para el insomnio', 'Con Receta', 'Ayuda para conciliar el sueño', 25, 16.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Antiarrítmico', 'Con Receta', 'Control de los trastornos del ritmo cardíaco', 55, 14.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Anticoagulante', 'Con Receta', 'Prevención de coágulos de sangre', 65, 18.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Tratamiento para la diabetes', 'Con Receta', 'Control de los niveles de azúcar en la sangre', 20, 21.99);
-- Insertar ejemplos de productos de cuidado personal
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Shampoo revitalizante', 'Cuidado Personal', 'Fortalece y revitaliza el cabello', 50, 9.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Crema hidratante facial', 'Cuidado Personal', 'Hidratación profunda para la piel del rostro', 30, 12.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Desodorante en barra', 'Cuidado Personal', 'Protección duradera contra el mal olor', 40, 7.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Gel de baño suavizante', 'Cuidado Personal', 'Limpieza y suavidad para la piel', 60, 6.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Crema corporal humectante', 'Cuidado Personal', 'Hidratación profunda para todo el cuerpo', 35, 10.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Cepillo dental eléctrico', 'Cuidado Personal', 'Limpieza superior para una sonrisa saludable', 45, 24.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Pasta dental blanqueadora', 'Cuidado Personal', 'Blanqueamiento dental y protección contra caries', 25, 8.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Crema para manos y uñas', 'Cuidado Personal', 'Hidratación y fortalecimiento para manos y uñas', 55, 11.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Protector solar SPF 50+', 'Cuidado Personal', 'Protección contra los rayos UVA y UVB', 65, 14.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Gel para peinar', 'Cuidado Personal', 'Fijación y estilo para el cabello', 20, 7.99);
-- Insertar ejemplos de productos para bebés y niños
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Pañales desechables', 'Bebés y Niños', 'Absorción y comodidad para bebés', 100, 19.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Toallitas húmedas', 'Bebés y Niños', 'Limpieza suave y delicada para el cambio de pañales', 80, 5.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Crema para pañal', 'Bebés y Niños', 'Protección y prevención de irritaciones en la zona del pañal', 50, 8.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Jabón líquido para bebés', 'Bebés y Niños', 'Limpieza suave para la piel sensible de los bebés', 60, 7.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Shampoo para niños', 'Bebés y Niños', 'Limpieza y cuidado del cabello de los niños', 45, 6.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Loción hidratante para bebés', 'Bebés y Niños', 'Hidratación suave y delicada para la piel de los bebés', 30, 9.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Cepillo y peine para bebés', 'Bebés y Niños', 'Cuidado del cabello de los bebés', 55, 4.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Chupete', 'Bebés y Niños', 'Satisfacción y calma para los bebés', 70, 3.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Talco para bebés', 'Bebés y Niños', 'Suavidad y frescura para la piel del bebé', 40, 6.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Biberón', 'Bebés y Niños', 'Alimentación cómoda para los bebés', 25, 9.99);
-- Insertar ejemplos de productos de higiene bucal
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Cepillo de dientes', 'Higiene Bucal', 'Cepillo de cerdas suaves para una limpieza efectiva', 100, 4.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Pasta dental', 'Higiene Bucal', 'Pasta con flúor para prevenir caries y mantener dientes sanos', 80, 3.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Enjuague bucal', 'Higiene Bucal', 'Enjuague refrescante para mantener el aliento fresco', 50, 6.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Hilo dental', 'Higiene Bucal', 'Hilo dental para remover placa y residuos entre los dientes', 60, 2.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Enjuague bucal sin alcohol', 'Higiene Bucal', 'Enjuague suave para personas con sensibilidad al alcohol', 45, 7.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Cepillo interdental', 'Higiene Bucal', 'Cepillo para limpiar entre los espacios interdentales', 30, 4.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Crema dental blanqueadora', 'Higiene Bucal', 'Pasta para blanquear y mantener los dientes más brillantes', 55, 5.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Cepillo dental eléctrico', 'Higiene Bucal', 'Cepillo eléctrico para una limpieza más eficiente', 70, 19.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Limpiador de lengua', 'Higiene Bucal', 'Instrumento para limpiar la lengua y mejorar la higiene bucal', 40, 3.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Enjuague bucal para encías sensibles', 'Higiene Bucal', 'Enjuague suave para personas con encías sensibles', 25, 8.99);
-- Insertar ejemplos de productos de nutrición y suplementos
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Multivitamínico', 'Nutrición y Suplementos', 'Suplemento vitamínico para cubrir necesidades diarias', 50, 14.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Proteína en polvo', 'Nutrición y Suplementos', 'Suplemento para mejorar la recuperación muscular', 30, 24.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Omega-3', 'Nutrición y Suplementos', 'Suplemento con ácidos grasos esenciales para la salud cardiovascular', 40, 19.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Calcio + Vitamina D', 'Nutrición y Suplementos', 'Suplemento para fortalecer los huesos y dientes', 60, 12.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Hierro', 'Nutrición y Suplementos', 'Suplemento para prevenir y tratar la deficiencia de hierro', 55, 9.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Biotina', 'Nutrición y Suplementos', 'Suplemento para fortalecer cabello, piel y uñas', 70, 8.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Probiótico', 'Nutrición y Suplementos', 'Suplemento para mejorar la salud digestiva', 45, 16.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Suplemento de fibra', 'Nutrición y Suplementos', 'Suplemento para promover una digestión saludable', 35, 11.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Coenzima Q10', 'Nutrición y Suplementos', 'Suplemento antioxidante para la salud cardiovascular', 25, 21.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Vitamina C', 'Nutrición y Suplementos', 'Suplemento para reforzar el sistema inmunológico', 50, 7.99);
-- Insertar ejemplos de productos de cuidado de piel
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Crema aclaradora de Piel', 'Cuidado de Piel', 'Hidratación intensiva para todo tipo de piel', 50, 9.50);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Crema hidratante facial', 'Cuidado de Piel', 'Hidratación intensiva para todo tipo de piel', 50, 19.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Limpiador facial suave', 'Cuidado de Piel', 'Limpieza profunda sin resecar la piel', 40, 12.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Mascarilla facial revitalizante', 'Cuidado de Piel', 'Tratamiento para revitalizar y dar luminosidad a la piel', 30, 16.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Serum antiarrugas', 'Cuidado de Piel', 'Tratamiento intensivo para reducir arrugas y líneas de expresión', 35, 24.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Exfoliante facial suave', 'Cuidado de Piel', 'Elimina células muertas y renueva la piel', 55, 9.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Tónico facial refrescante', 'Cuidado de Piel', 'Tonifica y refresca la piel después de la limpieza', 45, 11.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Crema antiacné', 'Cuidado de Piel', 'Tratamiento para combatir el acné y reducir imperfecciones', 40, 18.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Crema contorno de ojos', 'Cuidado de Piel', 'Hidratación y cuidado específico para el contorno de los ojos', 50, 17.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Aceite facial nutritivo', 'Cuidado de Piel', 'Nutrición intensa para pieles secas y deshidratadas', 30, 22.99);
-- Insertar ejemplos de productos de salud sexual (sin juguetes sexuales)
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Preservativos de látex', 'Salud Sexual', 'Preservativos lubricados para protección durante las relaciones sexuales', 100, 10.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Lubricante íntimo a base de agua', 'Salud Sexual', 'Lubricante de larga duración para mayor comodidad durante las relaciones sexuales', 50, 15.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Suplemento sexual masculino', 'Salud Sexual', 'Suplemento natural para mejorar el rendimiento sexual', 40, 39.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Suplemento sexual femenino', 'Salud Sexual', 'Suplemento natural para aumentar el deseo y la satisfacción sexual en las mujeres', 30, 37.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Pruebas de embarazo', 'Salud Sexual', 'Kit de pruebas de embarazo para detectar la presencia de hormona HCG en la orina', 50, 9.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Pruebas de ovulación', 'Salud Sexual', 'Kit de pruebas de ovulación para determinar el momento más fértil del ciclo menstrual', 40, 12.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Condones femeninos', 'Salud Sexual', 'Preservativos diseñados para ser utilizados por las mujeres', 20, 19.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Suplemento para aumentar la libido', 'Salud Sexual', 'Suplemento natural para aumentar el deseo sexual en hombres y mujeres', 35, 29.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Pastillas anticonceptivas', 'Salud Sexual', 'Pastillas hormonales para prevenir el embarazo', 60, 21.99);
INSERT INTO Producto (Nombre, Categoria, Descripcion, Cantidad, Precio)
VALUES ('Aceite de masaje afrodisíaco', 'Salud Sexual', 'Aceite de masaje con ingredientes afrodisíacos para aumentar la estimulación sexual', 25, 16.99);

-- Insertar ejemplo de Inventario
INSERT INTO Inventario (IdProducto, IdSucursal)
VALUES
(1, 1), (2, 1), (3, 1), (11, 1), (12, 1), (13, 1),
(21, 1), (22, 1), (23, 1), (31, 1), (32, 1), (33, 1),
(41, 1), (42, 1), (43, 1), (51, 1), (52, 1), (53, 1),
(61, 1), (62, 1), (63, 1), (71, 1), (72, 1), (73, 1);  -- Asociar con la sucursal Sucursal A

INSERT INTO Inventario (IdProducto, IdSucursal)
VALUES
(4, 2), (5, 2), (6, 2), (14, 2), (15, 2), (16, 2),
(24, 2), (25, 2), (26, 2), (34, 2), (35, 2), (36, 2),
(44, 2), (45, 2), (46, 2), (54, 2), (55, 2), (56, 2),
(64, 2), (65, 2), (66, 2), (74, 2), (75, 2), (76, 2);  -- Asociar con la sucursal Sucursal B

INSERT INTO Inventario (IdProducto, IdSucursal)
VALUES
(7, 3), (8, 3), (9, 3), (10, 3), (17, 3), (18, 3), (19, 3), (20, 3),
(27, 3), (28, 3), (29, 3), (30, 3), (37, 3), (38, 3), (39, 3), (40, 3),
(47, 3), (48, 3), (49, 3), (50, 3), (57, 3), (58, 3), (59, 3), (60, 3),
(67, 3), (68, 3), (69, 3), (70, 3), (77, 3), (78, 3), (79, 3), (80, 3);  -- Asociar con la sucursal Sucursal C

-- Devolver los registros de la tabla Inventario
SELECT * FROM Inventario;