#!/bin/env bash

set -e

declare -A SUPPORTED_ARCHS=(
  ['x86_64']='amd64'
  ['i486']='386'
  ['i686']='386'
  ['aarch64']='arm64'
)

VERSION="${1}"

echo "${VERSION}"

for _ARCH in "${!SUPPORTED_ARCHS[@]}"; do
  FILE="helmfile_linux_${SUPPORTED_ARCHS[${_ARCH}]}_${VERSION}"
  wget "https://github.com/roboll/helmfile/releases/download/v${VERSION}/helmfile_linux_${SUPPORTED_ARCHS[${_ARCH}]}" -O "${FILE}"
  SHA512SUM="$(sha512sum "${FILE}" | awk '{print $1}')"
  echo "sha512: ${SHA512SUM}"
  B2SUM="$(b2sum "${FILE}" | awk '{print $1}')"
  echo "b2: ${B2SUM}"
  rm "${FILE}"

  sed -i "s/${_ARCH}. _CARCH=${SUPPORTED_ARCHS[${_ARCH}]}; sha512sums=.*; b2sums=.*;;/${_ARCH}\) _CARCH=${SUPPORTED_ARCHS[${_ARCH}]}; sha512sums=\(\'${SHA512SUM}\'\); b2sums=\(\'${B2SUM}\'\);;/" PKGBUILD
done
sed -i /pkgver=/c\pkgver=${VERSION} PKGBUILD
sed -i /pkgrel=/c\pkgrel=1 PKGBUILD

makepkg --printsrcinfo > .SRCINFO
#git add PKGBUILD .SRCINFO update.sh
#git commit -m "${VERSION}"
#git push
