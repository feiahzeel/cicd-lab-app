#!/bin/bash
# Reintenta hasta 60 s: si /health no devuelve 200, el despliegue falla y CodeDeploy hace rollback.
for i in $(seq 1 12); do
  CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:3000/health || true)
  if [ "$CODE" = "200" ]; then
    echo "Health check OK (intento $i)"
    exit 0
  fi
  echo "Intento $i: HTTP $CODE, reintentando..."
  sleep 5
done
echo "Health check FALLIDO"
exit 1
