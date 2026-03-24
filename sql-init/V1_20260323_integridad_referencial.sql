ALTER TABLE reportes_fallos
ADD CONSTRAINT fk_pizarra
FOREIGN KEY (id_pizarra)
REFERENCES pizarras(id_pizarra)
ON DELETE CASCADE;

ALTER TABLE reportes_fallos
ADD CONSTRAINT fk_tecnico
FOREIGN KEY (id_tecnico)
REFERENCES tecnicos(id_tecnico)
ON DELETE SET NULL;