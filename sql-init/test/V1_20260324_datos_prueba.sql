\echo '------------------------------------------------------------'
\echo ' Insertando datos de prueba'
\echo '------------------------------------------------------------'

-- Especialidades
INSERT INTO REF_especialidades (nombre, descripcion) VALUES
    ('Electrónica', 'Reparación de componentes electrónicos'),
    ('Redes', 'Configuración y mantenimiento de redes'),
    ('Software', 'Diagnóstico y solución de problemas de software');

-- Técnicos
INSERT INTO tecnicos (nombre, id_especialidad_fk) VALUES
    ('Carlos López', 1),
    ('María García', 2),
    ('Pedro Martínez', 3);

-- Pizarras (estado inicial: Operativa)
INSERT INTO pizarras (ubicacion, estado) VALUES
    ('Aula 101', 'Operativa'),
    ('Aula 202', 'Operativa'),
    ('Sala de Conferencias', 'Operativa');

\echo ' '
\echo 'Estado inicial de pizarras (deben estar Operativas):'
SELECT id_pizarra_pk, ubicacion, estado FROM pizarras;
\echo ' '

-- Reportes de fallos (aquí se disparan los triggers)
INSERT INTO reportes_fallos (fecha, descripcion, id_pizarra_fk, id_tecnico_fk) VALUES
    (CURRENT_DATE, 'Pantalla sin respuesta', 1, 1),
    (CURRENT_DATE, 'Conexión intermitente', 2, 2),
    (CURRENT_DATE, 'Error de calibración', 3, 3);

\echo 'Estado final de pizarras (deben estar En Reparación):'
\echo ' '
SELECT id_pizarra_pk, ubicacion, estado FROM pizarras;

\echo '------------------------------------------------------------'
\echo ' Datos de prueba insertados exitosamente'
\echo '------------------------------------------------------------'