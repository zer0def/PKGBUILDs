#!/bin/sh -e
for i in $versions; do
  for j in x86_64 aarch64; do
    [ "${j}" = "aarch64" ] && _archdir=sbsa || _archdir="${j}"
    _file="datacenter-gpu-manager-exporter-${i}-1.${j}.rpm"
    lftp -c "pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_file}"
    for k in sha256 sha512 b2 b3; do
      sed -z "s/\(${k}sums_${j}=\)([^)]*)/\1('$("${k}sum" "${_file}"|awk '{print $1}')')/g" -i PKGBUILD
    done
  done
  sed -e "s/^pkgver=.*/pkgver=${i}/" -i PKGBUILD
  makepkg --printsrcinfo >.SRCINFO;git add PKGBUILD .SRCINFO;git commit -m "upgpkg: ${i}-1"
done
