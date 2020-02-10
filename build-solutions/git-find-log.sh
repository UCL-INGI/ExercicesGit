#!/usr/bin/env bash

REPO_URL="https://github.com/githubtraining/hellogitworld"

POPULATE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
SCRIPT_NAME="$(basename "${BASH_SOURCE[0]}")"
SCRIPT_NAME="$(echo "${SCRIPT_NAME}" | cut -f 1 -d '.')"
SECTION_DIR="$(realpath "${POPULATE_DIR}/../${SCRIPT_NAME}/problems")"
REPO_DIR="${SECTION_DIR}/${SCRIPT_NAME}"

source "${POPULATE_DIR}/common.sh"

# Clean existing repo
rm -rf "${REPO_DIR}"

# Clone it locally
git clone "${REPO_URL}" "${REPO_DIR}"

# Archive it
archive_zip "${SECTION_DIR}" "${SCRIPT_NAME}"
