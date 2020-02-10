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
bash "${POPULATE_DIR}/simple_repo.sh" "${PROBLEM_REPO_DIR}"

# Add tracked and untracked files
cd "${PROBLEM_REPO_DIR}/clone"
echo "This is wrong content" > to_stag.txt
git add to_stag.txt
git commit -m "Add to_stag file"
git push
echo "random content" > to_stag.txt
echo "other random content" > to_stag_2.txt
echo "Other file" > other_file.txt
cd -

# The expected solution is merely to add the files to the staged area
cp -r "${PROBLEM_REPO_DIR}" "${SOL_REPO_DIR}"
cd "${SOL_REPO_DIR}/clone"
git add to_stag.txt
git add to_stag_2.txt
cd -

# Archive it
archive_zip "${PROBLEM_DIR}" "${SCRIPT_NAME}"
archive_zip "${SOL_DIR}" "${SCRIPT_NAME}"
