Running this application in developer environmet
Assuming docker-compose is installed on the machine

$ docker-compose build -f docker-compose.yml
$ docker-compose up -f docker-compose.yml


To deploy this application in production
1. change: local.env file to change postgres username and password
2. change: local.env: SECRET_KEY setting to strong key
3. change: Dockerfile-postgres - Modify only the required username and password for the production env

then run the deployment using the following script
$ docker-compose build -f production-docker-compose.yml
$ docker-compose up -f production-docker-compose.yml


to stop all the services
$ docker-compose down -f <environment-compose>.yml



