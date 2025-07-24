## Indra Technical Test

Este proyecto es una prueba técnica desarrollada con Angular. A continuación se describe lo realizado hasta el momento:

### Estructura del Proyecto

- **indra-technical-test-1/**: Carpeta principal del frontend Angular.
  - `angular.json`, `tsconfig.json`, `package.json`: Archivos de configuración de Angular y dependencias.
  - `Dockerfile`, `docker-compose.yml`, `nginx.conf`: Archivos para contenerización y despliegue.
  - `public/`: Archivos públicos como favicon.
  - `src/`: Código fuente principal.
    - `app/`: Módulo principal de la aplicación.
      - `core/interfaces/`: Interfaces TypeScript para entidades como vehículo y cotización.
      - `pages/`: Componentes de páginas, incluyendo gestión de vehículos.
        - `vehicle/`: Página de vehículos con componentes para formulario y listado.
      - `shared/services/`: Servicios para interacción con Supabase y lógica de vehículos.

### Funcionalidades Implementadas

- **Gestión de vehículos**: Listado y formulario para agregar/editar vehículos.
- **Servicios**: Integración con Supabase para persistencia de datos.
- **Interfaces**: Definición de modelos para vehículos y cotizaciones.
- **Contenerización**: Configuración de Docker y Nginx para facilitar el despliegue.

### Tecnologías Utilizadas

- Angular
- TypeScript
- Supabase
- Docker
- Nginx

### Próximos pasos

- Implementar autenticación y autorización.
- Mejorar la gestión de cotizaciones.
- Añadir pruebas unitarias y de integración.

---
Este README se irá actualizando conforme avance el desarrollo.
