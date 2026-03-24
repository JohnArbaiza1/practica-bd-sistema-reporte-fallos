\echo '----------------------------------------------------------------------'
\echo 'Iniciando creación de índices para optimizar el acceso a los datos...'

CREATE INDEX idx_fecha_reporte_fallos ON reportes_fallos(fecha);

CREATE INDEX idx_identificador_tecnico_asignado ON reportes_fallos(id_tecnico_fk);
\echo 'Índices creados correctamente.'
\echo ' '

\echo 'Explicación de como los índices afectan al Planificador de Consultas'
\echo ' '
-- Explicación sobre la optimización de consultas
\echo 'Los índices en fecha y id_tecnico_fk permiten al Planificador de Consultas'
\echo 'del SGBD acceder a los datos de forma más eficiente, evitando recorridos'
\echo 'completos de la tabla (full table scan).'
\echo 'Mejoran el rendimiento de consultas que utilizan filtros (WHERE)'
\echo 'y operaciones de unión (JOIN).'

\echo ' '

-- Explicación sobre el impacto en operaciones de escritura
\echo 'Sin embargo, cada índice adicional aumenta el costo en INSERT, UPDATE y DELETE,'
\echo 'ya que deben actualizarse al modificar los datos. Por eso se debe equilibrar'
\echo 'el rendimiento de lectura con el impacto en las escrituras.'
\echo '----------------------------------------------------------------------'
\echo ' '