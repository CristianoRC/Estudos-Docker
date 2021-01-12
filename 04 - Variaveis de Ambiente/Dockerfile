FROM node:alpine

ADD ./index.js /

#O Env é sobrescrito quando passamos o parametro no docker run
ENV environment=dev 

ENTRYPOINT [ "node" ]

CMD [ "index.js" ]