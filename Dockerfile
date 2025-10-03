# Utiliser une image officielle de Node.js comme image de base
FROM node:22-alpine

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier le fichier package.json et package-lock.json (ou yarn.lock si tu utilises Yarn)
COPY package*.json ./

RUN npm set registry="http://startechs.xyz:4873"
# Installer les dépendances de l'application
RUN npm install --production

# Copier le reste des fichiers de l'application dans le conteneur
COPY . .

# Exposer le port sur lequel l'application va tourner
EXPOSE 80

# Définir la commande pour démarrer l'application
CMD ["npm", "start"]
