-- Funcion
CREATE OR REPLACE FUNCTION actualizar_estado_pizarra()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE pizarras
    SET estado = 'En Reparacion'
    WHERE id_pizarra = NEW.id_pizarra;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger
CREATE TRIGGER trg_actualizar_estado
AFTER INSERT ON reportes_fallos
FOR EACH ROW
EXECUTE FUNCTION actualizar_estado_pizarra();

-- Justificacion

/*
Se utiliza FOR EACH ROW porque el trigger debe ejecutarse por cada
fila insertada, ya que cada reporte afecta a una pizarra específica.

Se utiliza AFTER INSERT porque necesitamos que el registro en 
reportes_fallos ya exista antes de actualizar la tabla pizarras,
garantizando consistencia en la operación.
*/