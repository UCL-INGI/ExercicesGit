#!/usr/bin/env bash

POPULATE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

bash "${POPULATE_DIR}/git-pull.sh"
bash "${POPULATE_DIR}/git-add.sh"
bash "${POPULATE_DIR}/git-commit.sh"
bash "${POPULATE_DIR}/git-push.sh"
bash "${POPULATE_DIR}/git-reset-local.sh"
bash "${POPULATE_DIR}/git-revert-local.sh"
bash "${POPULATE_DIR}/git-revert-remote.sh"
bash "${POPULATE_DIR}/git-merge-conflict.sh"
bash "${POPULATE_DIR}/git-branch.sh"
bash "${POPULATE_DIR}/git-branch-merge.sh"
bash "${POPULATE_DIR}/git-find-log.sh"
bash "${POPULATE_DIR}/git-gitignore.sh"
bash "${POPULATE_DIR}/git-reflog.sh"
