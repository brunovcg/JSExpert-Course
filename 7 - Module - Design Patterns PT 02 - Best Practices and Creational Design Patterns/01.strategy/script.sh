docker run \
    --name postgres_js_expert \
    -e POSTGRES_USER=erickwendel \
    -e POSTGRES_PASSWORD="senha0001" \
    -e POSTGRES_DB=heroes \
    -p 5434:5434 \
    -d \
    postgres

docker logs postgres_js_expert
docker exec -it postgres_js_expert psql --username erickwendel --dbname heroes
CREATE TABLE warriors(id serial PRIMARY KEY, name VARCHAR (255) NOT NULL);
SELECT * FROM warriors;

# mongodb

docker run -p 27017:27017 \
    --name mongodb_js_expert \
    -e MONGO_INITDB_ROOT_USERNAME=erickwendel \
    -e MONGO_INITDB_ROOT_PASSWORD=senhaadmin \
    -d mongo:4