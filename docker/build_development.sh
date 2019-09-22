export host_user_name=$(id -un) host_user_id=$(id -u)
cd ../django/
. build_development_docker.sh
