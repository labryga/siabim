docker image build \
  -t siabim_nginx:1.17 \
  --build-arg host_user_name=$(id -un) \
  --build-arg host_user_id=$(id -u) \
  -f ./Dockerfile.development .

