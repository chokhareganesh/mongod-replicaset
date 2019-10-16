# mongo 'mongodb://192.168.99.1:27017,192.168.99.1:27018,192.168.99.1:27019/?replicaSet=rs0'
# rs.conf().members
# --bind_ip
#  --bind_ip_all

mongod --port 27017 --dbpath /home/ganesh/docker-container-data/docker-container/mongodb-data/data-1 --smallfiles --bind_ip_all --replSet rs0 &
sleep 5
echo "first started"

mongod --port 27018 --dbpath /home/ganesh/docker-container-data/docker-container/mongodb-data/data-2 --smallfiles --bind_ip_all --replSet rs0 &
sleep 5
echo "second started"

mongod --port 27019 --dbpath /home/ganesh/docker-container-data/docker-container/mongodb-data/data-3 --smallfiles --bind_ip_all --replSet rs0 &
sleep 5
echo "third started"

sleep 5

mongo localhost:27017/admin initreplica.js


