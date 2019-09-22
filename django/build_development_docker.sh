export host_user_name=$(id -un) host_user_id=$(id -u)
docker image build -t siabim_django:2.2.5 \
  --build-arg host_user_name=$(id -un) \
  --build-arg host_user_id=$(id -u) \
  -f ./development.Dockerfile .
