-- DATOS DE PRUEBA - NEARSPOT


-- 1. ROLES
INSERT INTO rol (nombre)
VALUES ('USUARIOS');

INSERT INTO rol (nombre)
VALUES ('USUARIO_PRESTADORES');

INSERT INTO rol (nombre)
VALUES ('USUARIOS_ADMIN');


-- 2. TIPOS DE ACTOR
INSERT INTO tipo_actor (nombre)
VALUES ('COMERCIO');

INSERT INTO tipo_actor (nombre)
VALUES ('EMPRENDIMIENTO');

INSERT INTO tipo_actor (nombre)
VALUES ('PRESTADOR_SERVICIO');


-- 3. RUBROS
INSERT INTO rubro (nombre, descripcion, estado)
VALUES (
    'Gastronomía',
    'Comercios y emprendimientos dedicados a alimentos y bebidas',
    'ACTIVO'
);

INSERT INTO rubro (nombre, descripcion, estado)
VALUES (
    'Electricidad',
    'Servicios de instalaciones y reparaciones eléctricas',
    'ACTIVO'
);

INSERT INTO rubro (nombre, descripcion, estado)
VALUES (
    'Construcción',
    'Servicios relacionados con construcción, albañilería y mantenimiento',
    'ACTIVO'
);

INSERT INTO rubro (nombre, descripcion, estado)
VALUES (
    'Belleza',
    'Servicios relacionados con estética y cuidado personal',
    'ACTIVO'
);

INSERT INTO rubro (nombre, descripcion, estado)
VALUES (
    'Tecnología',
    'Servicios y productos relacionados con informática y tecnología',
    'ACTIVO'
);

INSERT INTO rubro (nombre, descripcion, estado)
VALUES (
    'Indumentaria',
    'Venta y confección de ropa y accesorios',
    'ACTIVO'
);

INSERT INTO rubro (nombre, descripcion, estado)
VALUES (
    'Automotor',
    'Servicios de mantenimiento y reparación de vehículos',
    'ACTIVO'
);

INSERT INTO rubro (nombre, descripcion, estado)
VALUES (
    'Hogar',
    'Servicios de mantenimiento y mejoras para el hogar',
    'ACTIVO'
);


-- 4. ZONAS
INSERT INTO zona (nombre)
VALUES ('Centro');

INSERT INTO zona (nombre)
VALUES ('Zona Norte');

INSERT INTO zona (nombre)
VALUES ('Zona Sur');

INSERT INTO zona (nombre)
VALUES ('Zona Este');

INSERT INTO zona (nombre)
VALUES ('Zona Oeste');


-- 5. USUARIOS
-- Administrador
INSERT INTO usuario (
    nombre,
    apellido,
    email,
    password,
    estado,
    rol_id
)
VALUES (
    'Ornella',
    'Lanciotti',
    'ornella.admin@nearspot.com',
    'hash_demo_admin',
    'ACTIVO',
    (SELECT id
     FROM rol
     WHERE nombre = 'USUARIOS_ADMIN')
);


-- Usuarios prestadores

INSERT INTO usuario (
    nombre,
    apellido,
    email,
    password,
    estado,
    rol_id
)
VALUES (
    'Juan',
    'López',
    'juan.lopez@email.com',
    'hash_demo_juan',
    'ACTIVO',
    (SELECT id
     FROM rol
     WHERE nombre = 'USUARIO_PRESTADORES')
);


INSERT INTO usuario (
    nombre,
    apellido,
    email,
    password,
    estado,
    rol_id
)
VALUES (
    'Carolina',
    'Fernández',
    'carolina.fernandez@email.com',
    'hash_demo_carolina',
    'ACTIVO',
    (SELECT id
     FROM rol
     WHERE nombre = 'USUARIO_PRESTADORES')
);


INSERT INTO usuario (
    nombre,
    apellido,
    email,
    password,
    estado,
    rol_id
)
VALUES (
    'Miguel',
    'Gómez',
    'miguel.gomez@email.com',
    'hash_demo_miguel',
    'ACTIVO',
    (SELECT id
     FROM rol
     WHERE nombre = 'USUARIO_PRESTADORES')
);


INSERT INTO usuario (
    nombre,
    apellido,
    email,
    password,
    estado,
    rol_id
)
VALUES (
    'Laura',
    'Pérez',
    'laura.perez@email.com',
    'hash_demo_laura',
    'ACTIVO',
    (SELECT id
     FROM rol
     WHERE nombre = 'USUARIO_PRESTADORES')
);


-- Usuarios generales

INSERT INTO usuario (
    nombre,
    apellido,
    email,
    password,
    estado,
    rol_id
)
VALUES (
    'Sofía',
    'Ramírez',
    'sofia.ramirez@email.com',
    'hash_demo_sofia',
    'ACTIVO',
    (SELECT id
     FROM rol
     WHERE nombre = 'USUARIOS')
);


INSERT INTO usuario (
    nombre,
    apellido,
    email,
    password,
    estado,
    rol_id
)
VALUES (
    'Lucas',
    'Torres',
    'lucas.torres@email.com',
    'hash_demo_lucas',
    'ACTIVO',
    (SELECT id
     FROM rol
     WHERE nombre = 'USUARIOS')
);


INSERT INTO usuario (
    nombre,
    apellido,
    email,
    password,
    estado,
    rol_id
)
VALUES (
    'María',
    'Sánchez',
    'maria.sanchez@email.com',
    'hash_demo_maria',
    'ACTIVO',
    (SELECT id
     FROM rol
     WHERE nombre = 'USUARIOS')
);


-- 6. UBICACIONES
INSERT INTO ubicacion (
    direccion,
    localidad,
    provincia,
    latitud,
    longitud,
    zona_id
)
VALUES (
    'San Martín 520',
    'Rosario',
    'Santa Fe',
    -32.946820,
    -60.639320,
    (SELECT id FROM zona WHERE nombre = 'Centro')
);


INSERT INTO ubicacion (
    direccion,
    localidad,
    provincia,
    latitud,
    longitud,
    zona_id
)
VALUES (
    'Av. Alberdi 1850',
    'Rosario',
    'Santa Fe',
    -32.925500,
    -60.668400,
    (SELECT id FROM zona WHERE nombre = 'Zona Norte')
);


INSERT INTO ubicacion (
    direccion,
    localidad,
    provincia,
    latitud,
    longitud,
    zona_id
)
VALUES (
    'San Juan 3100',
    'Rosario',
    'Santa Fe',
    -32.956100,
    -60.672300,
    (SELECT id FROM zona WHERE nombre = 'Zona Oeste')
);


INSERT INTO ubicacion (
    direccion,
    localidad,
    provincia,
    latitud,
    longitud,
    zona_id
)
VALUES (
    'Av. San Martín 4200',
    'Rosario',
    'Santa Fe',
    -32.988100,
    -60.646700,
    (SELECT id FROM zona WHERE nombre = 'Zona Sur')
);


INSERT INTO ubicacion (
    direccion,
    localidad,
    provincia,
    latitud,
    longitud,
    zona_id
)
VALUES (
    'Mendoza 950',
    'Rosario',
    'Santa Fe',
    -32.949600,
    -60.634900,
    (SELECT id FROM zona WHERE nombre = 'Centro')
);


-- 7. PRESTADORES
-- Juan - Electricista
INSERT INTO prestador (
    nombre,
    descripcion,
    telefono,
    email,
    sitio_web,
    instagram,
    horario_atencion,
    estado,
    tipo_actor_id,
    usuario_id,
    ubicacion_id,
    rubro_id
)
VALUES (
    'Electricidad López',
    'Instalaciones eléctricas, reparaciones y mantenimiento domiciliario',
    '+54 341 555-0101',
    'contacto@electricidadlopez.com',
    'www.electricidadlopez.com',
    '@electricidadlopez',
    TIMESTAMP '2026-01-01 08:00:00',
    'ACTIVO',
    (
        SELECT id
        FROM tipo_actor
        WHERE nombre = 'PRESTADOR_SERVICIO'
    ),
    (
        SELECT id
        FROM usuario
        WHERE email = 'juan.lopez@email.com'
    ),
    (
        SELECT id
        FROM ubicacion
        WHERE direccion = 'San Martín 520'
    ),
    (
        SELECT id
        FROM rubro
        WHERE nombre = 'Electricidad'
    )
);


-- Carolina - Emprendimiento gastronómico
INSERT INTO prestador (
    nombre,
    descripcion,
    telefono,
    email,
    sitio_web,
    instagram,
    horario_atencion,
    estado,
    tipo_actor_id,
    usuario_id,
    ubicacion_id,
    rubro_id
)
VALUES (
    'Dulce Carolina',
    'Emprendimiento de tortas artesanales, desayunos y mesas dulces',
    '+54 341 555-0202',
    'hola@dulcecarolina.com',
    NULL,
    '@dulcecarolina',
    TIMESTAMP '2026-01-01 09:00:00',
    'ACTIVO',
    (
        SELECT id
        FROM tipo_actor
        WHERE nombre = 'EMPRENDIMIENTO'
    ),
    (
        SELECT id
        FROM usuario
        WHERE email = 'carolina.fernandez@email.com'
    ),
    (
        SELECT id
        FROM ubicacion
        WHERE direccion = 'Av. Alberdi 1850'
    ),
    (
        SELECT id
        FROM rubro
        WHERE nombre = 'Gastronomía'
    )
);


-- Miguel - Comercio
INSERT INTO prestador (
    nombre,
    descripcion,
    telefono,
    email,
    sitio_web,
    instagram,
    horario_atencion,
    estado,
    tipo_actor_id,
    usuario_id,
    ubicacion_id,
    rubro_id
)
VALUES (
    'TecnoPoint',
    'Venta y reparación de computadoras, notebooks y accesorios',
    '+54 341 555-0303',
    'ventas@tecnopoint.com',
    'www.tecnopoint.com',
    '@tecnopoint',
    TIMESTAMP '2026-01-01 10:00:00',
    'ACTIVO',
    (
        SELECT id
        FROM tipo_actor
        WHERE nombre = 'COMERCIO'
    ),
    (
        SELECT id
        FROM usuario
        WHERE email = 'miguel.gomez@email.com'
    ),
    (
        SELECT id
        FROM ubicacion
        WHERE direccion = 'San Juan 3100'
    ),
    (
        SELECT id
        FROM rubro
        WHERE nombre = 'Tecnología'
    )
);


-- Laura - Belleza
INSERT INTO prestador (
    nombre,
    descripcion,
    telefono,
    email,
    sitio_web,
    instagram,
    horario_atencion,
    estado,
    tipo_actor_id,
    usuario_id,
    ubicacion_id,
    rubro_id
)
VALUES (
    'Estética Laura',
    'Servicios de manicura, maquillaje y cuidado personal',
    '+54 341 555-0404',
    'turnos@esteticalaura.com',
    NULL,
    '@esteticalaura',
    TIMESTAMP '2026-01-01 09:30:00',
    'ACTIVO',
    (
        SELECT id
        FROM tipo_actor
        WHERE nombre = 'PRESTADOR_SERVICIO'
    ),
    (
        SELECT id
        FROM usuario
        WHERE email = 'laura.perez@email.com'
    ),
    (
        SELECT id
        FROM ubicacion
        WHERE direccion = 'Av. San Martín 4200'
    ),
    (
        SELECT id
        FROM rubro
        WHERE nombre = 'Belleza'
    )
);


-- 8. PRESTACIONES
-- Electricidad López

INSERT INTO prestacion (
    nombre,
    descripcion,
    tipo,
    prestador_id
)
VALUES (
    'Instalación eléctrica',
    'Instalaciones eléctricas domiciliarias y comerciales',
    'SERVICIO',
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Electricidad López'
    )
);


INSERT INTO prestacion (
    nombre,
    descripcion,
    tipo,
    prestador_id
)
VALUES (
    'Reparación de tableros eléctricos',
    'Diagnóstico y reparación de tableros eléctricos',
    'SERVICIO',
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Electricidad López'
    )
);


INSERT INTO prestacion (
    nombre,
    descripcion,
    tipo,
    prestador_id
)
VALUES (
    'Instalación de luminarias',
    'Colocación y reparación de luminarias',
    'SERVICIO',
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Electricidad López'
    )
);


-- Dulce Carolina

INSERT INTO prestacion (
    nombre,
    descripcion,
    tipo,
    prestador_id
)
VALUES (
    'Tortas personalizadas',
    'Tortas artesanales personalizadas para eventos',
    'PRODUCTO',
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Dulce Carolina'
    )
);


INSERT INTO prestacion (
    nombre,
    descripcion,
    tipo,
    prestador_id
)
VALUES (
    'Desayunos sorpresa',
    'Desayunos personalizados con entrega a domicilio',
    'PRODUCTO',
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Dulce Carolina'
    )
);


-- TecnoPoint

INSERT INTO prestacion (
    nombre,
    descripcion,
    tipo,
    prestador_id
)
VALUES (
    'Reparación de notebooks',
    'Diagnóstico y reparación de notebooks',
    'SERVICIO',
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'TecnoPoint'
    )
);


INSERT INTO prestacion (
    nombre,
    descripcion,
    tipo,
    prestador_id
)
VALUES (
    'Accesorios de computación',
    'Venta de teclados, mouse, auriculares y accesorios',
    'PRODUCTO',
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'TecnoPoint'
    )
);


-- Estética Laura

INSERT INTO prestacion (
    nombre,
    descripcion,
    tipo,
    prestador_id
)
VALUES (
    'Manicura',
    'Servicio de manicura tradicional y semipermanente',
    'SERVICIO',
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Estética Laura'
    )
);


INSERT INTO prestacion (
    nombre,
    descripcion,
    tipo,
    prestador_id
)
VALUES (
    'Maquillaje social',
    'Servicio de maquillaje para eventos',
    'SERVICIO',
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Estética Laura'
    )
);


-- 9. RESEÑAS
INSERT INTO reseña (
    contenido,
    estado,
    usuario_id,
    prestador_id
)
VALUES (
    'Muy buen servicio. Llegó a horario y solucionó el problema rápidamente.',
    'ACTIVA',
    (
        SELECT id
        FROM usuario
        WHERE email = 'sofia.ramirez@email.com'
    ),
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Electricidad López'
    )
);


INSERT INTO reseña (
    contenido,
    estado,
    usuario_id,
    prestador_id
)
VALUES (
    'Excelente atención y muy buen trabajo.',
    'ACTIVA',
    (
        SELECT id
        FROM usuario
        WHERE email = 'lucas.torres@email.com'
    ),
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Electricidad López'
    )
);


INSERT INTO reseña (
    contenido,
    estado,
    usuario_id,
    prestador_id
)
VALUES (
    'La torta estaba muy rica y llegó en el horario acordado.',
    'ACTIVA',
    (
        SELECT id
        FROM usuario
        WHERE email = 'maria.sanchez@email.com'
    ),
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Dulce Carolina'
    )
);


INSERT INTO reseña (
    contenido,
    estado,
    usuario_id,
    prestador_id
)
VALUES (
    'Repararon mi notebook y quedó funcionando perfectamente.',
    'ACTIVA',
    (
        SELECT id
        FROM usuario
        WHERE email = 'sofia.ramirez@email.com'
    ),
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'TecnoPoint'
    )
);


INSERT INTO reseña (
    contenido,
    estado,
    usuario_id,
    prestador_id
)
VALUES (
    'Muy buena atención y excelente trabajo.',
    'ACTIVA',
    (
        SELECT id
        FROM usuario
        WHERE email = 'lucas.torres@email.com'
    ),
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Estética Laura'
    )
);


-- 10. CALIFICACIONES
INSERT INTO calificacion (
    valor,
    estado,
    usuario_id,
    prestador_id
)
VALUES (
    5,
    'ACTIVA',
    (
        SELECT id
        FROM usuario
        WHERE email = 'sofia.ramirez@email.com'
    ),
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Electricidad López'
    )
);


INSERT INTO calificacion (
    valor,
    estado,
    usuario_id,
    prestador_id
)
VALUES (
    4,
    'ACTIVA',
    (
        SELECT id
        FROM usuario
        WHERE email = 'lucas.torres@email.com'
    ),
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Electricidad López'
    )
);


INSERT INTO calificacion (
    valor,
    estado,
    usuario_id,
    prestador_id
)
VALUES (
    5,
    'ACTIVA',
    (
        SELECT id
        FROM usuario
        WHERE email = 'maria.sanchez@email.com'
    ),
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Dulce Carolina'
    )
);


INSERT INTO calificacion (
    valor,
    estado,
    usuario_id,
    prestador_id
)
VALUES (
    4,
    'ACTIVA',
    (
        SELECT id
        FROM usuario
        WHERE email = 'sofia.ramirez@email.com'
    ),
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'TecnoPoint'
    )
);


INSERT INTO calificacion (
    valor,
    estado,
    usuario_id,
    prestador_id
)
VALUES (
    5,
    'ACTIVA',
    (
        SELECT id
        FROM usuario
        WHERE email = 'lucas.torres@email.com'
    ),
    (
        SELECT id
        FROM prestador
        WHERE nombre = 'Estética Laura'
    )
);


-- Consultas de pruebas 
--Obtener todos los prestadores junto con su zona correspondiente
SELECT
    z.nombre AS zona,
    p.nombre AS prestador
FROM prestador p
JOIN ubicacion u
    ON u.id = p.ubicacion_id
JOIN zona z
    ON z.id = u.zona_id
ORDER BY z.nombre, p.nombre;

-- Obtener la cantidad de prestadores por rubro
SELECT
    r.nombre AS rubro,
    COUNT(p.id) AS cantidad_prestadores
FROM prestador p
JOIN rubro r
    ON r.id = p.rubro_id
GROUP BY r.nombre
ORDER BY cantidad_prestadores DESC;

-- Obtener la cantidad de prestadores por tipo de actor
SELECT
    ta.nombre AS tipo_actor,
    COUNT(p.id) AS cantidad_prestadores
FROM prestador p
JOIN tipo_actor ta
    ON ta.id = p.tipo_actor_id
GROUP BY ta.nombre
ORDER BY cantidad_prestadores DESC;