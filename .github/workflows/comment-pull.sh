#!/usr/bin/env bash

function ghapi() {
    gh api -H 'Accept: application/vnd.github+json' -H 'X-GitHub-Api-Version: 2022-11-28' "$@"
}

function commentbody() {
    echo "# 🗂️ Artefatti
$LINK"
}

OWNER=$(gh repo view --json owner --jq .owner.login)
REPO=$(gh repo view --json name --jq .name)
COMMENT_ID=$(ghapi "https://api.github.com/repos/$OWNER/$REPO/issues/$PR_NUM/comments" --jq '.[] | [.body, .id] | select(.[0] | startswith("# 🗂️ Artefatti")) | .[1]')

if [ -z "$COMMENT_ID" ]
then
    ghapi -X POST "https://api.github.com/repos/$OWNER/$REPO/issues/$PR_NUM/comments" -f "body=$(commentbody)"
else
    ghapi -X PATCH "https://api.github.com/repos/$OWNER/$REPO/issues/comments/$COMMENT_ID" -f "body=$(commentbody)"
fi
