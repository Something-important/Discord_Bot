FROM node:18.19.0-alpine
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm ci --only=production
ARG token 
ENV TOKEN=$token
CMD node index.js