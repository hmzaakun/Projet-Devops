# Utilisez une image de base légère Python
FROM python:3.9-slim

# Définissez le répertoire de travail dans le conteneur
WORKDIR /app

# Copiez les fichiers du projet dans le conteneur
COPY . /app

# Installez les dépendances du projet
RUN pip install --no-cache-dir -r requirements.txt

# Commande pour exécuter l'application
CMD ["python", "./app.py"]
