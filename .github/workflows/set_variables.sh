#!/bin/bash

set -eu

case "${GITHUB_EVENT_NAME}" in
    repository_dispatch)
        BRANCH=${PAYLOAD_BRANCH};;
    push)
        case "${GITHUB_REF}" in
            refs/heads/*)
                BRANCH=${GITHUB_REF#refs/heads/};;
            *)
                BRANCH=null;
        esac;;
esac
if [ -z ${BRANCH} ]; then
  BRANCH=null
fi
TAG_BRANCH="metwork/mfserv-centos7-runimage:${BRANCH}"
TAG_LATEST=""
if test "${BRANCH}" = "master"; then
    TAG_LATEST="metwork/mfserv-centos7-runimage:latest"
fi 
echo "::set-output name=branch::${BRANCH}"
echo "::set-output name=tag_branch::${TAG_BRANCH}"
echo "::set-output name=tag_latest::${TAG_LATEST}"
