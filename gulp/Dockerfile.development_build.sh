
docker image build \
  -t siabim_gulp:node_10.16.3 \
  --build-arg host_uid=$(id -u) \
  --build-arg host_uid_name=$(id -un) \
  -f ./Dockerfile.development .
