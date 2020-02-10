#!/usr/bin/env bash

POPULATE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
SCRIPT_NAME="$(basename "${BASH_SOURCE[0]}")"
SCRIPT_NAME="$(echo "${SCRIPT_NAME}" | cut -f 1 -d '.')"

SOL_DIR="$(realpath "${POPULATE_DIR}/../${SCRIPT_NAME}/solutions")"
PROBLEM_DIR="$(realpath "${POPULATE_DIR}/../${SCRIPT_NAME}/public")"
SOL_REPO_DIR="${SOL_DIR}/${SCRIPT_NAME}"
PROBLEM_REPO_DIR="${PROBLEM_DIR}/${SCRIPT_NAME}"

source "${POPULATE_DIR}/common.sh"

# Clean existing repos
rm -rf "${PROBLEM_REPO_DIR}" "${SOL_REPO_DIR}"

# Create basic repo
bash "${POPULATE_DIR}/repo.sh" "${PROBLEM_REPO_DIR}"

# Add file to the staged area
cd "${PROBLEM_REPO_DIR}/clone"

touch login.txt
git add login.txt
git commit -m "Starting login"
echo "login" > login.txt
git add login.txt
git commit -m "Finishing login"
git push

git checkout -b profile
touch profile.txt
git add profile.txt
git commit -m "Starting profile"
echo "profile" > profile.txt
git add profile.txt
git commit -m "Finishing profile"
git push --set-upstream origin profile

git checkout -b menu
touch menu.txt
git add menu.txt
git commit -m "Starting menu"
git push --set-upstream origin menu

git checkout profile

cd -

# The expected solution is to merge profile into master
cp -r "${PROBLEM_REPO_DIR}" "${SOL_REPO_DIR}"
cd "${SOL_REPO_DIR}/clone"

git checkout master
git merge profile
git push

cd -

# Archive it
archive_zip "${PROBLEM_DIR}" "${SCRIPT_NAME}"
archive_zip "${SOL_DIR}" "${SCRIPT_NAME}"
