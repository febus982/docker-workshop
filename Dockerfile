FROM node:alpine

RUN mkdir -p /app

COPY src/ /app/

EXPOSE 3000

WORKDIR /app

CMD ["node", "app.js"]
