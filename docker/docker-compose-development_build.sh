
cd ../django/
. ./django/Dockerfile.development_build.sh

cd ../gulp/
. ./gulp/build_development_Dockerfile.sh

cd ../docker/
docker-compose -f ./docker-compose-development.yml up
