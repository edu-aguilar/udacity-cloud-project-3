#DOCKER IMAGE REMOVE PREVIOUS
docker image rm -f eduaguilar/udacity-restapi-user
docker image rm -f eduaguilar/udacity-restapi-feed
docker image rm -f eduaguilar/udacity-frontend
docker image rm -f eduaguilar/reverseproxy

#DOCKER IMAGE CREATION
cd ../udacity-c3-frontend/
docker build --rm -t eduaguilar/udacity-frontend . 

cd ../udacity-c3-restapi-feed
docker build --rm -t eduaguilar/udacity-restapi-feed . 

cd ../udacity-c3-restapi-user
docker build --rm -t eduaguilar/udacity-restapi-user . 

cd ../udacity-c3-deployment/docker
docker build --rm -t eduaguilar/reverseproxy . 

#BUILD CREATED IMAGES
docker-compose -f docker-compose-build.yaml build --parallel

#START SYSTEM
docker-compose up