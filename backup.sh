docker exec -it mysql bash -c "mysqldump -u root \"-p12345\" \"yuanshudb\"" > $(pwd)/installation.sql

sed -i "1d" $(pwd)/installation.sql

