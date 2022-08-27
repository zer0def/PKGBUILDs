#!/bin/sh -e

REPO="${2#*github.com/}"
LATEST_RUN="$(curl -sSL "https://api.github.com/repos/${REPO}/actions/runs" | jq -r '[.workflow_runs[]|select(.name=="Build and Release Box86")][0].id')"
#LATEST_ARTIFACT="$(curl -sSL "https://api.github.com/repos/${REPO}/actions/runs/${LATEST_RUN}/artifacts" | jq -r '.artifacts[]|select(.name=="box86-I386-Release").id')"
LATEST_ARTIFACT="$(curl -sSL "https://api.github.com/repos/${REPO}/actions/runs/${LATEST_RUN}/artifacts" | jq -r '.artifacts[]|select(.name=="box86-OTHER_ARM-Release").id')"
curl -C- -o "${1}" -SL "https://nightly.link/${REPO}/actions/artifacts/${LATEST_ARTIFACT}.zip"
