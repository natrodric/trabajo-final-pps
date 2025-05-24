#!/bin/bash
fecha=$(date +%F)

sql="backup_$fecha.sql"
tar="backup_$fecha.tar.gz"
enc="backup_$fecha.tar.gz.enc"

echo "[+] Exportando base de datos PostgreSQL..."
docker exec postgres pg_dump -U fastapi_user fastapi_db > $sql

echo "[+] Comprimiendo archivo SQL..."
tar -czf $tar $sql

echo "[+] Cifrando archivo comprimido..."
openssl enc -aes-256-cbc -salt -in $tar -out $enc -k secret123

echo "[+] Eliminando archivos intermedios..."
rm $sql $tar

echo "[✓] Copia de seguridad creada: $enc"
