
export host_user_name=$(id -un) \
       host_user_id=$(id -u)

cd ../django/
../django/build_development_Dockerfile.sh

cd ../gulp/
. ./gulp/build_development_Dockerfile.sh
