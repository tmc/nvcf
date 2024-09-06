#!/usr/bin/env bash
# generate-go-sdk-docs.sh - generate nvcf go sdk docs
set -euo pipefail

OUTPUT_PATH="${1:-nvcf-go-sdk.md}"
DOCS_BRANCH="${2:-main}"
SDK_PACKAGE="${3:-github.com/tmc/nvcf-go}"

# Verify go is installed:
if ! command -v go &> /dev/null
then
    echo "go could not be found"
    exit 1
fi

OUTPUT_ABS_PATH="$(realpath "${OUTPUT_PATH}")"

# mktmp, shallow clone this repo on DOCS_BRANCH, run go list + go doc:
WORK_DIR="${WORK_DIR:-$(mktemp -d)}"
if [ -n "${WORK_DIR}" ]; then
    repo_root="$(git rev-parse --show-toplevel)"
    echo "Cloning ${repo_root} to ${WORK_DIR}"
    cd "${WORK_DIR}"
    git clone --branch "${DOCS_BRANCH}" "${repo_root}" nvcf
    cd nvcf
fi

# Generate the docs:
go list "${SDK_PACKAGE}/..." |grep -v /internal/ |xargs -L1 go doc -all > "${OUTPUT_ABS_PATH}"

