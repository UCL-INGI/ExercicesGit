#!/usr/bin/env bash

SCRIPT_NAME="$(basename "${BASH_SOURCE[0]}")"
SCRIPT_NAME="$(echo "${SCRIPT_NAME}" | cut -f 1 -d '.')"
REPO_NAME=${1:-"problems/${SCRIPT_NAME}"}

POPULATE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
REPO_DIR="${REPO_NAME}"
REPO_BARE="${REPO_DIR}/bare.git"
REPO_CLONE="${REPO_DIR}/clone"

# Clean existing repo
rm -rf "${REPO_DIR}"

# Create a bare repository
mkdir -p "${REPO_DIR}"
git init --bare "${REPO_BARE}"
cd "${REPO_BARE}"

# Clone it locally
git clone "${REPO_BARE}" "${REPO_CLONE}"

# Do a few commits
cd "${REPO_CLONE}"
git config core.fileMode false  # INGInious changes permissions when uploading archives or copying files to docker
cp "${POPULATE_DIR}/lorem_ipsum.txt" "${REPO_CLONE}/text.txt"
git add "${REPO_CLONE}/text.txt"
git commit -m "Initiating project"

# Push to bare repo
git push -u origin master
git remote set-url origin "$(python3 -c "import os.path; print(os.path.relpath('${REPO_BARE}', '${REPO_CLONE}'))")"
cd -
