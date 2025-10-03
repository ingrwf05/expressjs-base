FROM node

WORKDIR /app
COPY ./ /app
RUN npm set registry="http://startechs.xyz:4873"
RUN npm install

CMD ["node","app.js"]