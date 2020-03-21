cd udacity-c3-deployment/docker/

#REMOVE CURRENT RUNNING CONTAINERS
docker-compose down

#BUILD CREATED IMAGES
docker-compose -f docker-compose-build.yaml build --parallel

#START SYSTEM
docker-compose up