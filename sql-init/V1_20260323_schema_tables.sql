-- Tabla pizarras
CREATE TABLE pizarras (
    id_pizarra SERIAL PRIMARY KEY,
    ubicacion VARCHAR(50),
    estado VARCHAR(20),
    CONSTRAINT chk_estado 
        CHECK (estado IN ('Operativa', 'En Reparación', 'Fuera de Servicio'))
);

-- Tabla tecnicos
CREATE TABLE tecnicos (
    id_tecnico SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    especialidad VARCHAR(50)
);

-- Tabla reportes_fallos
CREATE TABLE reportes_fallos (
    id_reporte SERIAL PRIMARY KEY,
    fecha DATE,
    descripcion VARCHAR(50),
    id_pizarra INT,
    id_tecnico INT
);