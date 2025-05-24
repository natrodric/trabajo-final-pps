# Proyecto PPS - Plataforma Simulada SaaS

Este proyecto es una simulación de una plataforma SaaS (Software as a Service) orientada a la práctica de buenas prácticas DevSecOps. Incluye una API REST desarrollada con FastAPI, contenedores Docker para cada componente, métricas, logs, seguridad y respaldo automatizado. El objetivo es construir una infraestructura sencilla pero completa que represente un entorno realista.

---

##  Despliegue rápido

1. **Clona el repositorio:**

    ```
    git clone https://github.com/usuario/proyecto-pps.git
    cd proyecto-pps
    ```

2. **Levanta el entorno:**

    ```
    docker-compose up -d --build
    ```

---

##  Servicios incluidos

- **FastAPI:** [http://localhost:8000/docs](http://localhost:8000/docs)
- **PostgreSQL:** Base de datos principal
- **NGINX:** [https://localhost](https://localhost)
- **Prometheus:** [http://localhost:9090](http://localhost:9090)
- **Grafana:** [http://localhost:3000](http://localhost:3000)  
  **Usuario:** `admin` | **Contraseña:** `admin`
- **Loki:** [http://localhost:3100](http://localhost:3100)

---

##  Seguridad y Backup

- **Análisis de vulnerabilidades** con Trivy
- **Escaneo estático** con Bandit
- **Gestión de secretos** mediante variables de entorno
- **Script de backup cifrado** con OpenSSL

---

## 📄 Documentación

Consulta el informe PDF adjunto para más detalles técnicos, reflexiones personales y análisis de seguridad.
