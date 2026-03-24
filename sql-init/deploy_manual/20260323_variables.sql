-- ============================================================
-- Este archivo centraliza toda la configuración de la DB
-- ============================================================
\set db_name  db_reportes
\set user_owner   postgres
\set schema_name  public
\set app_version 1.0.0
\set fecha_creacion 2026-03-23

\echo '------------------------------------------------------------'
\echo ' Variables cargadas'
\echo '------------------------------------------------------------'
\echo '  Base de datos : ' :db_name
\echo '  Usuario       : ' :user_owner
\echo '  Schema        : ' :schema_name
\echo '  Versión       : ' :app_version
\echo '------------------------------------------------------------'
\echo ' '