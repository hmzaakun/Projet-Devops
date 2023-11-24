#!/bin/bash

# Nom de l'image et du conteneur
IMAGE_NAME="mon-projet:latest"
CONTAINER_NAME="mon-projet-container"

# Arrêt du conteneur existant
docker stop $CONTAINER_NAME

# Suppression du conteneur
docker rm $CONTAINER_NAME

# Téléchargement de la nouvelle version de l'image
docker pull $IMAGE_NAME

# Démarrage d'un nouveau conteneur avec la nouvelle image
docker run -d --name $CONTAINER_NAME $IMAGE_NAME