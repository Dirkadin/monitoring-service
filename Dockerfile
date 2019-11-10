FROM node
RUN apt-get -y update
RUN apt-get install -y git

RUN git clone https://github.com/Dirkadin/monitoring-service.git

COPY . /app
WORKDIR /app

RUN npm install

CMD ["npm", "start"]

