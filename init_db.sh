docker cp ./installation.sql mysql:/root/

docker exec -it mysql bash -c "mysql -u root \"-p12345\" -e \"CREATE DATABASE IF NOT EXISTS yuanshudb\""
docker exec -it mysql bash -c "mysql -u root \"-p12345\" -D \"yuanshudb\" -e \"source /root/installation.sql\""

