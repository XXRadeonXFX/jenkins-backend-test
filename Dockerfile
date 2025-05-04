#FROM node:22

#OPTIMIZATION##############
FROM node:22-alpine
###########################


WORKDIR /app


#OPTIMIZATION##############
# COPY package*.json .
# COPY *.js .
# COPY .dockerignore .
###########################


#COPY . .
RUN npm install
COPY . .

#OPTIMIZATION##############
#RUN npm ci --omit=dev
###########################

EXPOSE 3001
#RUN node index.js
CMD [ "node" , "index.js" ]
ENV PORT=3001
#ENV MONGO_URI="mongodb+srv://radeonxfx:1029384756!Sound@cluster0.gdl7f.mongodb.net/TravelMemory"
ENV MONGO_URI="samplemongouri"
#ENV MONGO_NAME=""
