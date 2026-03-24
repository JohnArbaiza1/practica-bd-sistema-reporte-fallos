\echo '============================================================'
\echo 'Iniciando proceso de despliegue de la db de manera manual'
\echo 'del Sistema de Reporte de Fallos en Pizarras Electrónicas'
\echo '============================================================'
\echo ' '

\i /docker-entrypoint-initdb.d/deploy_manual/20260323_variables.sql
\i /docker-entrypoint-initdb.d/deploy_manual/20260323_create_database.sql

\set ON_ERROR_STOP on

-- Scripts correspondientes al modulo 1
\i /docker-entrypoint-initdb.d/modulo1/V2_20260323_schema_tables.sql
\i /docker-entrypoint-initdb.d/modulo1/V1_20260323_integridad_referencial.sql
\i /docker-entrypoint-initdb.d/modulo1/V1_20260323_automatizacion.sql

-- Scripts correspondientes al modulo 2
\i /docker-entrypoint-initdb.d/modulo2/V1_20260324_alter_table.sql
\i /docker-entrypoint-initdb.d/modulo2/V1_20260324_indices.sql

-- Scripts correspondientes al modulo 3 y 4
\i /docker-entrypoint-initdb.d/modulo3_4/V1_20260324_mantenimiento.sql
\i /docker-entrypoint-initdb.d/modulo3_4/V1_20260324_metadatos_catalogo.sql