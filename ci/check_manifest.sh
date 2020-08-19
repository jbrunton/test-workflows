#!/bin/bash

set -e

MANIFEST_VERSION=$(yq r manifest.yml version)
BUILD_INFO=$(yq r build/catalog.yml 'builds.(version==$MANIFEST_VERSION)')
echo "::set-output name=buildRequired::$([ -z "$BUILD_INFO" ] && echo 0 || echo 1)"
