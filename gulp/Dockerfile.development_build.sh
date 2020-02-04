
docker image build \
  -t siabim_gulp:node_10.16.3 \
  --build-arg host_uid=1002 \
  --build-arg host_uid_name=$(id -un) \
  -f ./Dockerfile.development .
