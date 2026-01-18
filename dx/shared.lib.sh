# dx/shared.lib.sh

log() {
  echo "[ ${0} ]" "${@}"
} # log

if [ -z $SCRIPT_DIR ]; then
  log "SCRIPT_DIR was not defined"
  exit 1
fi

check_for_docker() {
  if ! command -v "docker" > /dev/null 2>&1; then
    log "Docker is not installed. Please visit https://docs.docker/get-started/"
    exit 1
  fi
  log "Docker is installed."
}

ROOT_DIR=$(cd -- "${SCRIPT_DIR}"/.. > /dev/null 2>&1 && pwd)