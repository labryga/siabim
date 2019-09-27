docker image build \
  -t gulp_node:siabim \
  --build-arg host_uid=$(id -u) \
  --build-arg host_user_name=$(id -un) \
  -f ./gulp.development.Dockerfile .
