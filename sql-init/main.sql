\echo '============================================================'
\echo 'Iniciando proceso de despliegue de la db del'
\echo 'Sistema de Reporte de Fallos en Pizarras Electrónicas'
\echo '============================================================'
\echo ' '

\set ON_ERROR_STOP on

\i /docker-entrypoint-initdb.d/20260323_variables.sql
\i /docker-entrypoint-initdb.d/20260323_create_database.sql

-- Scripts correspondientes al modulo 1
\i /docker-entrypoint-initdb.d/modulo1/V2_20260323_schema_tables.sql
\i /docker-entrypoint-initdb.d/modulo1/V1_20260323_integridad_referencial.sql
\i /docker-entrypoint-initdb.d/modulo1/V1_20260323_automatizacion.sql