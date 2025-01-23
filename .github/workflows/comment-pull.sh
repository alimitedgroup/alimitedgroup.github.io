#!/usr/bin/env bash

if [ -n "$SSH_KEY" ]
then
    mkdir -p ~/.ssh
    echo "$SSH_KEY" >> ~/.ssh/altd_ed25519
    chmod 600 ~/.ssh/altd_ed25519
    ssh-keyscan sbkd.us.to >> ~/.ssh/known_hosts
fi

COMMIT=$(git rev-parse HEAD)
BODY=$(gh pr view --json body --jq '.body' | grep -v '^Artefatti: ')
BODY=$(echo "$BODY" | grep -v '^Artefatti: ')
BODY+=$(printf '%s\n%s' "$BODY" "Artefatti: https://sbkd.us.to/altd/$COMMIT")

scp -i ~/.ssh/altd_ed25519 -r ./dist "altd@sbkd.us.to:deploys/$COMMIT"
gh pr edit --body "$BODY"