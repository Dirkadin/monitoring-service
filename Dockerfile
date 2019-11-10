FROM node
RUN apt-get -y update
RUN apt-get install -y git

RUN git clone https://github.com/Dirkadin/monitoring-service.git

COPY /monitoring-service /app
WORKDIR /app

EXPOSE 8080

RUN npm install

CMD ["npm", "start"]

