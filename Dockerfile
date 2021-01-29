FROM node:latest

RUN apt update

WORKDIR /home/app

RUN npm update -g
