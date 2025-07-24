# Indra Technical Test

Este proyecto es una aplicación web desarrollada con Angular, orientada a la gestión de vehículos y cotizaciones. A continuación se describe lo realizado hasta el momento:

## Estructura del Proyecto

El proyecto está organizado de la siguiente manera:

- **src/app/core/interfaces/**: Contiene las interfaces principales, como `quotation.interface.ts` y `vehicle.interface.ts`, que definen la estructura de los datos manejados en la aplicación.
- **src/app/pages/vehicle/**: Incluye el componente principal de vehículos y sus rutas.
- **src/app/pages/vehicle/components/**: Aquí se encuentran los componentes reutilizables relacionados con vehículos:
  - `vehicle-form`: Formulario para agregar o editar vehículos.
  - `vehicle-list`: Listado de vehículos registrados.
- **src/app/shared/services/**: Servicios para la gestión de datos y comunicación con Supabase:
  - `supabase.service.ts`: Servicio para interactuar con la base de datos Supabase.
  - `vehicle.service.ts`: Servicio específico para operaciones CRUD de vehículos.

## Funcionalidades Implementadas

- **Listado de vehículos**: Visualización de todos los vehículos registrados en la base de datos.
- **Formulario de vehículos**: Permite crear y editar vehículos.
- **Integración con Supabase**: Se ha configurado la conexión con Supabase para persistencia de datos.

## Configuración y Archivos Clave

- `angular.json`, `tsconfig.json`, `docker-compose.yml`, `Dockerfile`, `nginx.conf`: Archivos de configuración para Angular, TypeScript y despliegue con Docker y Nginx.
- `public/`, `src/`: Carpetas principales de recursos y código fuente.

## Próximos pasos

- Implementar la gestión de cotizaciones.
- Mejorar la interfaz de usuario y agregar validaciones.
- Realizar pruebas unitarias y de integración.

---
Este README se irá actualizando conforme avance el desarrollo del proyecto.
