FROM alpine:3.16
WORKDIR /app
RUN apk update && \
    apk upgrade && \
    apk add --no-cache nodejs npm
COPY package*.json ./ 
RUN npm install
COPY . .
EXPOSE 8080
CMD ["npm", "start"]

