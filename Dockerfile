FROM dockerfile/nodejs
MAINTAINER John Alexander Bye <john.alexander.bye@itera.no>
WORKDIR /src

RUN apt-get update && apt-get install -y nodejs npm

ADD app/package.json /src/
RUN npm install
ADD app/nodemon.json /src/
