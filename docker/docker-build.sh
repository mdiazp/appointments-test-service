export DOCKER_GIT_CREDENTIALS="$(cat ~/.git-credentials)"
docker build -t mdiazp/appointments-test-service:v2.0.0-alpha.0 \
--build-arg DOCKER_GIT_CREDENTIALS \
-f dockerfile ../app/.
