FROM python:3

COPY . D:\demo_docker

WORKDIR D:\demo_docker

RUN python HelloWorld.py

CMD [ "echo" , "Buenos Dias" ]
