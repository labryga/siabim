
docker image build \
  -t siabim_django:2.2.16 \
  --build-arg host_user_name=$(id -un) \
  --build-arg host_user_id=$(id -u) \
  -f ./Dockerfile.development .
