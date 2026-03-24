\echo '---------------------------------------------------------------'
\echo ' Mantenimiento de la base de datos (VACUUM ANALYZE)'
\echo '---------------------------------------------------------------'

\echo 'Ejecutando limpieza y actualización de estadísticas...'

VACUUM ANALYZE reportes_fallos;

\echo 'Proceso completado correctamente.'
\echo ' '

\echo 'Justificación del uso de VACUUM ANALYZE'
\echo ' '
\echo 'El comando VACUUM ANALYZE se utiliza para mantener el buen rendimiento'
\echo 'de la base de datos, especialmente en tablas con muchos cambios como'
\echo 'reportes_fallos.'
\echo ' '
\echo 'Por un lado, VACUUM se encarga de limpiar el espacio ocupado por'
\echo 'registros eliminados o actualizados (tuplas muertas), evitando que la'
\echo 'tabla crezca innecesariamente en disco.'
\echo ' '
\echo 'Por otro lado, ANALYZE actualiza las estadísticas de la tabla, lo que'
\echo 'permite al planificador de consultas tomar mejores decisiones al momento'
\echo 'de ejecutar consultas, como elegir entre un Index Scan o un Sequential Scan.'
\echo ' '
\echo 'Por eso, usar VACUUM ANALYZE es importante, ya que combina limpieza y'
\echo 'optimización en una sola operación, mejorando tanto el almacenamiento'
\echo 'como el rendimiento de las consultas.'
\echo ' '