#!/usr/bin/env bash

POPULATE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
SCRIPT_NAME="$(basename "${BASH_SOURCE[0]}")"
SCRIPT_NAME="$(echo "${SCRIPT_NAME}" | cut -f 1 -d '.')"

SOL_DIR="$(realpath "${POPULATE_DIR}/../git_catastrophy_scenario_3/solutions")"
PROBLEM_DIR="$(realpath "${POPULATE_DIR}/../git_catastrophy_scenario_3/public")"
SOL_REPO_DIR="${SOL_DIR}/${SCRIPT_NAME}"
PROBLEM_REPO_DIR="${PROBLEM_DIR}/${SCRIPT_NAME}"

source "${POPULATE_DIR}/common.sh"

# Clean existing repos
rm -rf "${PROBLEM_REPO_DIR}" "${SOL_REPO_DIR}"

# Create basic repo
bash "${POPULATE_DIR}/repo.sh" "${PROBLEM_REPO_DIR}"

# Add a pushed misguided commit
cd "${PROBLEM_REPO_DIR}/clone"
echo "Another commit" > text.txt
git add text.txt
git commit -m "Lost commit"
git push
git reset --hard HEAD~1
git push -f
cd -

# The expected solution is to merge the last reflog entry
cp -r "${PROBLEM_REPO_DIR}" "${SOL_REPO_DIR}"
cd "${SOL_REPO_DIR}/clone"
git merge "$(git reflog -n 2 --format="%h" | sed -n 2p)"
git push
cd --

# Archive it
archive_zip "${PROBLEM_DIR}" "${SCRIPT_NAME}"
archive_zip "${SOL_DIR}" "${SCRIPT_NAME}"
