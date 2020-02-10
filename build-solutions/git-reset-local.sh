#!/usr/bin/env bash

POPULATE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
SCRIPT_NAME="$(basename "${BASH_SOURCE[0]}")"
SCRIPT_NAME="$(echo "${SCRIPT_NAME}" | cut -f 1 -d '.')"

SOL_DIR="$(realpath "${POPULATE_DIR}/../git_catastrophy_scenario_1/solutions")"
PROBLEM_DIR="$(realpath "${POPULATE_DIR}/../git_catastrophy_scenario_1/public")"
SOL_REPO_DIR="${SOL_DIR}/${SCRIPT_NAME}"
PROBLEM_REPO_DIR="${PROBLEM_DIR}/${SCRIPT_NAME}"

source "${POPULATE_DIR}/common.sh"

# Clean existing repos
rm -rf "${PROBLEM_REPO_DIR}" "${SOL_REPO_DIR}"

# Create basic repo
bash "${POPULATE_DIR}/simple_repo.sh" "${PROBLEM_REPO_DIR}"

# Add a non pushed misguided commit
cd "${PROBLEM_REPO_DIR}/clone"
echo "This content is wrong" > to_commit.txt
git add to_commit.txt
git commit -m "Misguided commit"
cd -

# The expected solution is to reset the last commit
cp -r "${PROBLEM_REPO_DIR}" "${SOL_REPO_DIR}"
cd "${SOL_REPO_DIR}/clone"
git reset HEAD^
cd --

# Archive it
archive_zip "${PROBLEM_DIR}" "${SCRIPT_NAME}"
archive_zip "${SOL_DIR}" "${SCRIPT_NAME}"
