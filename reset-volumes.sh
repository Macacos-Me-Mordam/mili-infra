docker compose down
docker volume rm $(docker volume ls -q)

cp ./keycloak/mili-realm.json ./mili-realm.json

rm -rf ./keycloak
sudo rm -rf ./postgres_data

mkdir keycloak
mv ./mili-realm.json ./keycloak/mili-realm.json
