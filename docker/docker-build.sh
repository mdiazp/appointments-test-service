export DOCKER_GIT_CREDENTIALS="$(cat ~/.git-credentials)"
docker build -t mdiazp/appointments-test-service \
--build-arg DOCKER_GIT_CREDENTIALS \
-f dockerfile ../app/.
