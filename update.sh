#!/bin/sh -e
for i in $versions; do
  _ver="${i#*:}"; [ "${_ver%%.*}" -lt 515 ] || _xarch=aarch64
  [ "${_ver%%.*}" -ge 580 ] || _ver_prefix="-${_ver%%.*}";sed -e "s/^_ver_prefix=.*/_ver_prefix='${_ver_prefix:+-}'/" -i PKGBUILD
  [ "${i%:*}" = "z" ] && _ver_suffix=".el8"; sed -e "s/^_ver_suffix=.*/_ver_suffix='${_ver_suffix:+-}'/" -i PKGBUILD

  for j in x86_64 ${_xarch}; do
    [ "${j}" = "aarch64" ] && _archdir=sbsa || _archdir="${j}"
    [ "${i##*.}" = "1" ] && {
      i="${i#*:}"
      _file="libnvidia-nscq${_ver_prefix}-${i%.*}-${i##*.}${_ver_suffix}.${j}.rpm"
      lftp -c "pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_file}"
      for k in sha256 sha512 b2 b3; do
        sed -z "s/\(${k}sums_${j}=\)([^)]*)/\1(\n  '$("${k}sum" "${_file}"|awk '{print $1}')'\n)/g" -i PKGBUILD
      done
    } || {
      _file="libnvidia_nscq-linux-${_archdir}-${i}-archive.tar.xz"
      lftp -c "pget https://developer.download.nvidia.com/compute/nvidia-driver/redist/libnvidia_nscq/linux-${_archdir}/${_file}"
      for k in sha256 sha512 b2 b3; do
        sed -z "s/\(${k}sums_${j}=\)([^)]*)/\1(\n  '$("${k}sum" "${_file}"|awk '{print $1}')'\n)/g" -i PKGBUILD
      done
    }
  done
  sed -e "s/^pkgver=.*/pkgver=${i%:*}/" -i PKGBUILD
  makepkg --printsrcinfo >.SRCINFO;git add PKGBUILD .SRCINFO;git commit -m "upgpkg: ${i%:*}-1"
  unset _xarch _ver_prefix _ver_suffix
done
