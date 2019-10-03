
cd ../django/
. ./django/Dockerfile.development_build.sh

cd ../gulp/
. ../gulp/Dockerfile.development_build.sh

cd ../docker/
docker-compose -f ./docker-compose-development.yml up --build
