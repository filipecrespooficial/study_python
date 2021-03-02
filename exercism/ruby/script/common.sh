export WORKDIR="$(dirname "${BASH_SOURCE[0]}")/.."
export DOCKER_COMPOSE="docker-compose -f $WORKDIR/script/docker-compose.yml"
