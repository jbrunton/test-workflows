#!/bin/bash

set -e

MANIFEST_VERSION=$(yq r manifest.yml version)
echo MANIFEST_VERSION=$MANIFEST_VERSION
BUILD_INFO=$(yq r build/catalog.yml "builds.(version==$MANIFEST_VERSION)")
echo BUILD_INFO=$BUILD_INFO
echo "::set-output name=buildRequired::$([ -z "$BUILD_INFO" ] && echo 1 || echo 0)"
