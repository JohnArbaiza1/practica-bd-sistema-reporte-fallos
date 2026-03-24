# Evaluación Práctica: Ingeniería de Scripts en PostgreSQL - Sistema de Reporte de Fallos.

## 🧩 Descripción
El siguiente repositorio corresponde al corto N°1 del Diplomado de administración de base de datos e inteligencia de
negocios.
dicha practica consiste en la implementación de un sistema robusto para la gestión técnica de infraestructuras con PostgreSQL y pgAdmin contenerizados en Docker.

## 🗂️ Estructura de carpetas
- `docker-compose.yml`: orquesta servicios PostgreSQL y pgAdmin
- `sql-init/`: scripts de inicialización de base de datos
- `main.sql`: script principal
- `deploy_manual/`: SQL para despliegue manual
- `modulo1/`: scripts módulo 1 (automatización, integridad, esquema)
- `modulo2/`: scripts módulo 2 (alter, índices)
- `modulo3_4/`: scripts módulo 3 y 4 (mantenimiento, metadatos)


## 🚀 Requisitos previos

Antes de comenzar, asegúrate de tener instaladas las siguientes herramientas:

| Herramienta | Descarga |
|---|---|
| Docker Desktop (Windows/Mac) | [docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop) |
| Docker Engine (Linux) | [docs.docker.com/engine/install](https://docs.docker.com/engine/install) |
| Docker Compose | Incluido en Docker |
| pgAdmin *(opcional)* | [pgadmin.org/download](https://www.pgadmin.org/download) |

## 🛠️ Instalación y Ejecución

### 1. Clonar el repositorio
```bash
git clone https://github.com/JohnArbaiza1/practica-bd-sistema-reporte-fallos.git
cd practica-bd-sistema-reporte-fallos
```

### 2. Levantar los contenedores
```bash
# Para Windows
docker compose up -d

# Para Linux
sudo docker compose up -d
```

### 3. Verificar contenedores:

```bash
# Para Windows
docker compose ps

# Para Linux
sudo docker compose ps
```

### 4. Acceder a pgAdmin *(opcional)*

Abre tu navegador en [http://localhost:5050](http://localhost:5050) e ingresa con las siguientes credenciales:

| Campo | Valor |
|---|---|
| Email | `admin@admin.com` |
| Contraseña | `admin123` |

## 🔌 Conectar servidor en pgAdmin

Al ingresar a pgAdmin, agrega un nuevo servidor con los siguientes datos:

| Campo | Desde dentro de Docker | Desde fuera del contenedor |
|---|---|---|
| Nombre | `PostgreSQL 17` (o el de tu preferencia) | `PostgreSQL 17` (o el de tu preferencia) |
| Host | `practica_evaluada_db` | `localhost` |
| Puerto | `5432` | `5434` |
| Usuario | `postgres` | `postgres` |
| Contraseña | `admin123` | `admin123` |
| Base de datos | `db_sistema_reporte` | `db_sistema_reporte` |

## 🗄️ Bases de datos disponibles

Este proyecto maneja dos bases de datos:
### `db_sistema_reporte` — Automática
Se crea automáticamente al levantar los contenedores con toda la estructura del sistema. No requiere ningún paso adicional.

### `db_reportes` — Manual
Es una base de datos adicional para pruebas o despliegue independiente. Para crearla, ejecuta el siguiente comando una vez que los contenedores estén corriendo:
```bash
# Para Windows
docker exec -it practica_evaluada_db psql -U postgres -f /docker-entrypoint-initdb.d/deploy_manual/init_manual.sql

# Para Linux
sudo docker exec -it practica_evaluada_db psql -U postgres -f /docker-entrypoint-initdb.d/deploy_manual/init_manual.sql
```

> ⚠️ Si deseas volver a crearla desde cero, primero elimínala con:
> ```bash
> docker exec -it practica_evaluada_db psql -U postgres -c "DROP DATABASE IF EXISTS db_reportes;"
> sudo docker exec -it practica_evaluada_db psql -U postgres -c "DROP DATABASE IF EXISTS db_reportes;"
> ```

##  Integrantes
* John Elvis Arbaiza Velásquez  <a href="https://github.com/JohnArbaiza1" >JohnArbaiza1 </a>
* Luis Emilio González Molina <a href="https://github.com/gnz-e" >gnz-e </a>    
  