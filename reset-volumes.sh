docker compose down

# Remove só o volume deste projeto, se for nomeado
docker volume rm postgres_data

# Opcional: salvar realm
cp ./keycloak/mili-realm.json ./mili-realm.json

# Limpar pastas locais
rm -rf ./keycloak
rm -rf ./postgres_data # só se existir localmente

# Recriar keycloak dir com realm
mkdir keycloak
mv ./mili-realm.json ./keycloak/mili-realm.json
cc      