FROM node:alpine

RUN mkdir -p /app

COPY src/ /app/

EXPOSE 3000

CMD ["node", "app/app.js"]
