FROM node:14-alpine

# set working directory on the image file system.
WORKDIR /app 
# set env port
ENV PORT 85
# copy package.json file to image file system destination. Here, first argument is the source path, 
# and the second is the destination path on the image file system.
COPY package.json .
# create node_modules dependencies form package.json file, that we ignored in .dockerignore
RUN yarn install
# copy all files from local directory to image file system, here first argument is the source path, 
# and the second is the destination path on the image file system.
COPY . /app
# The CMD command tells Docker how to run the application we packaged in the image. 
# The CMD follows the format CMD [“command”, “argument1”, “argument2”].
CMD ["yarn", "start"]

