FROM node
RUN apt-get -y update
RUN apt-get install -y git

RUN git clone https://github.com/Dirkadin/SEM-Project2.git

COPY /monitoring-service /app
WORKDIR /app

RUN npm install

CMD ["npm", "start"]

