# mongod-replicaset

**NOTE- Mongodb Replica Set Accessible over Same Network/CIDR IP address if you are accessing over diffrent IP address it wont't work**

**Cases you need to change IP to bound and accessible withing network**

1. Local MongoDB Replica set not accessible inside Minikube Docker running Containers( then modify IP to bound as getway ip VirtualBox ip address i.e. your host-machine address)
2. 

deploy mongodb replica set in single command using docker-compose or shell 

## 1. Using Local **mongod** utility

TypeOfInstance| DataPath | Port | Host-IP-TO-Bound
---------|----------|---------|---------
Primary | need modify in run.sh | 27017 | modify In `/local-run/initreplica.js` with your ip address
Secondary | need modify in run.sh | 27018 |modify In `/local-run/initreplica.js` with your ip address
Arbiter  | need modify in run.sh | 27019 | modify In `/local-run/initreplica.js` with your ip address

1. go inside /local-run 
2. To **Start** run `bash run.sh` to three mongodb instances on localhost
3. To **Stop** run `bash stop.sh`
## 2. Using **docker-compose** 

## 3. Accessing locally hosted replica set inside **Kubernetes-Cluster** with hostname 
***Note- In this case you need to deploy your replica set over same IP address of your Minikube Host reside. To deploy Follow Step 1** 

In this case externaly hosted mongo need to access using ip address and port. but some cases your ip and port changes and you need to change the whole code or need to change environment vairble for new ip/port that case Service with External Name comes into picture
Read More here
https://cloud.google.com/blog/products/gcp/

1. **Before creating service edit configuraton**
   
2. **Create Service:** 
    `kubectl apply -f kubernetes-conf/external-mongo-service.yaml` to deploy and access mongo over **`'mongodb://mongo:27017,mongo:27018,mongo:27019/?replicaSet=rs0'`** inside any pod
