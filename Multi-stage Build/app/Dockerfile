FROM node:alpine AS builder
RUN npm install -g @angular/cli
ADD ./package.json /app/package.json
WORKDIR /app/
RUN npm i
ADD . /app/
RUN ng build

FROM nginx:alpine
COPY --from=builder /app/dist/app /usr/share/nginx/html/
RUN ls /usr/share/nginx/html/
