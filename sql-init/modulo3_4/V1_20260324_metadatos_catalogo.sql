\echo '------------------------------------------------------------'
\echo 'Documentación y Metadatos (Catálogo)'
\echo '------------------------------------------------------------'

COMMENT ON TABLE tecnicos IS
'Tabla que contiene información de los técnicos responsables de los mantenimientos y reparación de las Pizarras Electrónicas';

COMMENT ON COLUMN pizarras.estado IS
'Columna que almacena el estado del equipo dentro del sistema de pizarras. Valores permitidos: ''Operativa'', ''En Reparación'', ''Fuera de Servicio''. ';
\echo '------------------------------------------------------------'
\echo ''

\echo ''
-- Visualizar comentario de tabla tecnicos
SELECT obj_description('tecnicos'::regclass);

\echo ''
-- Visualizar comentario de columna estado de la tabla pizarras
SELECT col_description('pizarras'::regclass, 3);

\echo ''