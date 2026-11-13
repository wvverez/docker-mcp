# una imagen ligera de Python
FROM python:3.11-slim

# Directorio dentro del contenedor
WORKDIR /app

# Copio los archivos necesarios
COPY requirements.txt .
COPY server.py .

# Instalo la librería MCP
RUN pip install --no-cache-dir -r requirements.txt

# Comando que se ejecuta al levantar el contenedor
# Docker Desktop usa stdio para comunicarse
ENTRYPOINT ["python", "server.py"]
