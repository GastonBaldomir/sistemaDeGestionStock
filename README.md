# 🧾 Sistema de Registro  
## Especificación de Requisitos de Software  
### Sistema de Organización de Stock para Gestión Empresarial

---

## 1. Introducción

### 📌 Alcance del producto
Este sistema tiene como objetivo **gestionar y optimizar el inventario** de una empresa mediante el seguimiento de entradas, salidas, niveles de stock y ubicaciones.  
Está diseñado tanto para **PyMEs** de sectores como comercio minorista, manufactura y distribución, como para **grandes empresas** del sector.

### ⚙️ Límites
- Facturación  
- Logística de redistribución

### 💡 Valor del producto
- Reduce pérdidas por exceso de stock o productos obsoletos.  
- Mejora la eficiencia en el manejo de productos y la toma de decisiones.  
- Minimiza errores humanos mediante la automatización.  
- Aumenta la satisfacción del cliente al garantizar disponibilidad de productos.

### 🧍 Público objetivo
- Gerentes de operaciones  
- Encargados de almacén  
- Personal administrativo y logístico

### 🎯 Uso previsto
El sistema será utilizado para:
- Registrar productos y niveles de stock  
- Realizar movimientos de entrada y salida  
- Emitir alertas de reabastecimiento  
- Generar reportes de inventario

### 🧩 Descripción general
El sistema incluirá secciones de **gestión de productos, control de movimientos, reportes, usuarios y configuración**.  
Será accesible vía **navegador web**, con diseño responsive y posibilidad de integración con dispositivos móviles y hardware de almacén (escáneres de códigos, básculas, etc.).

---

## 2. Requisitos funcionales

El sistema permite:
- Registrar nuevos productos con código, descripción, unidad de medida y categoría.  
- Gestionar entradas y salidas de inventario.  
- Mostrar en tiempo real el stock disponible.  
- Generar alertas cuando el stock esté por debajo del mínimo definido.  
- Registrar múltiples ubicaciones o almacenes.  
- Emitir reportes exportables (PDF, Excel).  
- Gestionar usuarios con roles y permisos.

---

## 3. Requisitos de la interfaz externa

### 💻 Interfaz de usuario
- Interfaz amigable y responsive.  
- Panel de navegación con acceso rápido a los módulos principales.  
- Formularios con validación.  

### 🧱 Interfaz de hardware
- Compatible con lectores de código de barras.  
- Compatible con impresoras térmicas de etiquetas.  
- Integración con balanzas digitales vía puerto USB o serial.  

### 🧩 Interfaz de software
- Compatible con bases de datos SQL (MySQL, PostgreSQL).  
- Integración opcional con módulos de facturación o contabilidad.  

### 🌐 Interfaz de comunicación
- Conexión vía **HTTPS** para asegurar la transferencia de datos.  
- Soporte para **WebSockets** (comunicación en tiempo real entre cliente y servidor).  
- Notificaciones por correo electrónico y/o sistema interno.  

---

## 4. Requisitos no funcionales

### 🔒 Seguridad
- Autenticación y autorización con roles definidos.  
- Cifrado de datos sensibles.  
- Registro de logs de acceso y actividad.  

### ⚡ Capacidad
- Soporte para hasta **100.000 productos y movimientos por año** sin pérdida de rendimiento.  

### 🧠 Compatibilidad
- Compatible con navegadores modernos (Chrome, Firefox, Edge).  
- Compatible con sistemas Windows, Linux y macOS.  

### 🕒 Confiabilidad
- Disponibilidad mínima del **99,5%**.  
- Backup automático diario.  

### 📈 Escalabilidad
- Arquitectura modular para facilitar ampliaciones futuras.  
- Posibilidad de migrar a soluciones en la nube.  

### 🔧 Mantenibilidad
- Código comentado y documentado.  
- Sistema modular para facilitar actualizaciones.  

### 🧭 Facilidad de uso
- Capacitación mínima requerida para usuarios finales.  
- Manual de usuario y ayuda integrada.  

### 🌍 Otros requisitos no funcionales
- Soporte multilingüe.  
- Interfaz personalizable (colores, logos, idioma).  

---

✍️ **Integrantes:** Gastón Nahuel Baldomir - José Nieto - Gina chavez - Rocio Vila -Leandro Ridolffi - Carola Tala - Fiama Cobas - Sofia Bolmeni.
