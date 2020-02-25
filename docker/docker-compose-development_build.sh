cd ../django/
. ./Dockerfile.development_build.sh

cd ../gulp/
. ./Dockerfile.development_build.sh

cd ../docker/
docker-compose -f ./docker-compose-development.yml up --build
