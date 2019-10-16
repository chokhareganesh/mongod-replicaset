# mongod-replicaset

**NOTE- Mongodb Replica Set Accessible over Same Network/CIDR IP address if you are accessing over diffrent IP address it wont't work**

deploy mongodb replica set in single command using docker-compose or shell 

## 1. Using Local **mongod** utility

Type| DataPath | Port | Host-IP
---------|----------|---------|---------
Primary | need modify in run.sh | 27017 | modify In `/local-run/initreplica.js` with your ip address
Secondary | need modify in run.sh | 27018 |modify In `/local-run/initreplica.js` with your ip address
Arbiter  | need modify in run.sh | 27019 | modify In `/local-run/initreplica.js` with your ip address

1. go inside /local-run 
2. To **Start** run `bash run.sh` to three mongodb instances on localhost
3. To **Stop** run `bash stop.sh`
## 2. Using **docker-compose** 
