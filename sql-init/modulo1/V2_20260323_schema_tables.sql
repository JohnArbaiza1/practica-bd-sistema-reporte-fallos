\echo '------------------------------------------------------------'
\echo ' Creando las tablas de la base de datos'
\echo '------------------------------------------------------------'

-- tabla normalizada de especialidades técnicas de los técnicos
CREATE TABLE REF_especialidades (
    id_especialidad_pk SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT
);

-- Tabla pizarras
CREATE TABLE pizarras (
    id_pizarra_pk SERIAL PRIMARY KEY,
    ubicacion VARCHAR(50) NOT NULL,
    estado VARCHAR(20),
    CONSTRAINT chk_estado 
        CHECK (estado IN ('Operativa', 'En Reparación', 'Fuera de Servicio'))
);

-- Tabla tecnicos
CREATE TABLE tecnicos (
    id_tecnico_pk SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    id_especialidad_fk INT NOT NULL,
    CONSTRAINT fk_especialidad FOREIGN KEY (id_especialidad_fk) REFERENCES REF_especialidades(id_especialidad_pk)
);

-- Tabla reportes_fallos
CREATE TABLE reportes_fallos (
    id_reporte_pk SERIAL PRIMARY KEY,
    fecha DATE NOT NULL,
    descripcion VARCHAR(50),
    id_pizarra_fk INT,
    id_tecnico_fk INT
);

\echo '------------------------------------------------------------'
\echo ' Tablas creadas exitosamente'
\echo '------------------------------------------------------------'
\echo ' '