\echo '---------------------------------------------------------------'
\echo 'Iniciando modificación de la tabla reportes_fallos...'


-- Agregando la nueva columna de nivel_prioridad a la tabla reportes_fallos
\echo 'Agregando columna nivel_prioridad (NUMERIC(1,0))...'
ALTER TABLE reportes_fallos 
    ADD COLUMN nivel_prioridad NUMERIC(1,0);

-- Estableciendo una restricción (constraint) para validar los valores de la columna
\echo 'Agregando restricción CHECK para limitar valores entre 1 y 5...'
ALTER TABLE reportes_fallos 
    ADD CONSTRAINT chk_limite_valores_nivel_prioridad 
    CHECK (nivel_prioridad BETWEEN 1 AND 5);

\echo 'Modificación completada correctamente.'
\echo '---------------------------------------------------------------'
\echo ' '