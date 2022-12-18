# get base image from node js 14 alpine
FROM node:14-alpine

# install some additional package
RUN apk add --no-cache python3 g++ make

# set container working directory to /app
WORKDIR /app

# copy all content in current host directory to container working directory 
COPY . .

# set container environment variable
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies and build application
RUN npm install --production --unsafe-perm && npm run build

# expose container port 8080 to host
EXPOSE 8080

# execute shell command "npm start" to start application
CMD ["npm", "start"]
