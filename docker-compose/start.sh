docker run -it --rm -p 27017:27017 mongo &
docker build . -t temp;                                               
docker run --rm -p 3000:3000 -e DB_URL=mongodb://172.17.0.1:27017  temp