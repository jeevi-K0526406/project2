FROM node:20

WORKDIR /app

COPY . .
EXPOSE 8082
CMD ["node", "app.js"]
