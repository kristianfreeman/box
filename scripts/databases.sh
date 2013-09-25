sudo apt-get install libsqlite3-dev -y # Sneaking this in
sudo apt-get install postgresql -y
sudo apt-get install libpq-dev -y
sudo -u postgres psql postgres -c "CREATE ROLE vagrant SUPERUSER LOGIN;"

