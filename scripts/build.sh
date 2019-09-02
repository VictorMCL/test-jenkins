#!/bin/bash
echo 'Creando entorno virtual'
virtualenv entorno_virtual
source entorno_virtual/bin/activate
echo 'Instalando requirements.txt'
pip install -r requirements.txt
python src/app.py &
cd src && pytest && cd ..
echo 'Construyendo img docker'
docker build -t victormcl/apptest:latest .
echo 'push docker hub'
docker push victormcl/apptest:latest 
echo 'docker rm image'
docker rmi victormcl/apptest:latest
