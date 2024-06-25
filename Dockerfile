FROM node:21.7.1-alpine
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm ci --only=production
ARG token 
ENV TOKEN=$token
CMD node index.js