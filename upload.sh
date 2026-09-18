#!/usr/bin/env bash
set -euo pipefail

# SDSU ADRDL Bioinformatics Profile Upload Helper
# Usage:
#   ./upload.sh [repo-name]
# Example:
#   ./upload.sh .github           # For official GitHub Org Profile display
#   ./upload.sh sdsubioinfo       # For standard repo

REPO_NAME="${1:-.github}"
ORG="sdsubioinfo"
REMOTE_URL="https://github.com/${ORG}/${REPO_NAME}.git"

echo "=========================================================="
echo " Uploading to https://github.com/${ORG}/${REPO_NAME}"
echo "=========================================================="

# Check if remote already exists
if git remote get-url origin >/dev/null 2>&1; then
    echo "Updating existing remote origin..."
    git remote set-url origin "${REMOTE_URL}"
else
    echo "Adding remote origin: ${REMOTE_URL}..."
    git remote add origin "${REMOTE_URL}"
fi

echo ""
echo "Pushing main branch to ${REMOTE_URL}..."
git push -u origin main

echo ""
echo " Done! Successfully uploaded to https://github.com/${ORG}/${REPO_NAME}"
if [ "${REPO_NAME}" = ".github" ]; then
    echo ">> The README will now be displayed directly on your organization page: https://github.com/${ORG}"
fi
