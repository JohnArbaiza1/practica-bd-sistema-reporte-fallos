\echo '------------------------------------------------------------'
\echo ' Automatización mediante Triggers y PL/pgSQL'
\echo '------------------------------------------------------------'

\echo 'Funcion: actualizar_estado_pizarra'

-- Funcion
CREATE OR REPLACE FUNCTION actualizar_estado_pizarra()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE pizarras
    SET estado = 'En Reparación'
    WHERE id_pizarra = NEW.id_pizarra;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

\echo 'Trigger: trg_actualizar_estado'

-- Trigger
CREATE TRIGGER trg_actualizar_estado
AFTER INSERT ON reportes_fallos
FOR EACH ROW
EXECUTE FUNCTION actualizar_estado_pizarra();

\echo 'Justificacion del uso del Trigger'
\echo 'Se utiliza FOR EACH ROW porque el trigger debe ejecutarse por cada'
\echo 'fila insertada, ya que cada reporte afecta a una pizarra específica.'
\echo ' '
\echo 'Se utiliza AFTER INSERT porque necesitamos que el registro en'
\echo 'reportes_fallos ya exista antes de actualizar la tabla pizarras,'
\echo 'garantizando consistencia en la operación.'
\echo '------------------------------------------------------------'
\echo ''