# Establece la imagen base
FROM node:14-alpine

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY . /app

# Instala las dependencias y compila la aplicación
RUN npm install
RUN npm run build

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 3000

# Define el comando para ejecutar la aplicación
CMD ["npm", "run", "serve"]
