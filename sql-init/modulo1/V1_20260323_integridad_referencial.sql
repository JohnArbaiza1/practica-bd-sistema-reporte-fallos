\echo '------------------------------------------------------------'
\echo ' Integridad Referencial (Reglas de Comportamiento)'
\echo '------------------------------------------------------------'

ALTER TABLE reportes_fallos
ADD CONSTRAINT fk_pizarra
FOREIGN KEY (id_pizarra_fk)
REFERENCES pizarras(id_pizarra_pk)
ON DELETE CASCADE;

ALTER TABLE reportes_fallos
ADD CONSTRAINT fk_tecnico
FOREIGN KEY (id_tecnico_fk)
REFERENCES tecnicos(id_tecnico_pk)
ON DELETE SET NULL;
\echo '------------------------------------------------------------'
\echo ''
