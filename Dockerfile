FROM node
WORKDIR /usr/app
COPY package*.json ./
RUN npm i
COPY index.js ./
EXPOSE 3000
CMD ["node","index.js"]