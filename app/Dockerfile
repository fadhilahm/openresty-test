FROM node:16.15-alpine

WORKDIR /app

ARG PORT
ENV PORT=$PORT

COPY "package.json" "./"
COPY "package-lock.json" "./"
RUN npm ci

COPY . "./"

CMD ["node", "."]
