\echo '------------------------------------------------------------'
\echo ' Creando base de datos'
\echo '------------------------------------------------------------'

CREATE DATABASE :db_name;  -- usa la variable definida en 20260323_variables.sql

\echo '  Base de datos creada. Conectando...'
\c :db_name

\echo '  Conexión establecida.'
\echo '------------------------------------------------------------'
\echo ' '