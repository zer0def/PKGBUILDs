#!/bin/sh -e
for i in $versions; do
  _ver="${i#*:}"; [ "${_ver%%.*}" -lt 515 ] || _xarch=aarch64
  [ "${i%:*}" = "x" ] && _dash="-";                  sed -e "s/^_dash=.*/_dash='${_dash:+-}'/"                   -i PKGBUILD
  [ "${i%:*}" = "y" ] && _ver_prefix="-${_ver%%.*}"; sed -e "s/^_ver_prefix=.*/_ver_prefix='${_ver_prefix:+-}'/" -i PKGBUILD
  [ "${i%:*}" = "z" ] && _ver_suffix=".el8";         sed -e "s/^_ver_suffix=.*/_ver_suffix='${_ver_suffix:+-}'/" -i PKGBUILD
  _devel_dash="$(echo -n ${dash:+-}${_ver_suffix:+-}|head -c1)"

  for j in x86_64 ${_xarch}; do
    [ "${j}" = "aarch64" ] && _archdir=sbsa || _archdir="${j}"
    [ "${i##*.}" = "1" ] && {
      i="${i#*:}"
      _file="nvidia-fabric${_dash}manager${_ver_prefix}-${i%.*}-${i##*.}${_ver_suffix}.${j}.rpm"
      _devel="nvidia-fabric${_devel_dash}manager-devel${_ver_prefix}-${i%.*}-${i##*.}${_ver_suffix}.${j}.rpm"
      lftp -c "pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_file};pget https://developer.download.nvidia.com/compute/cuda/repos/rhel8/${_archdir}/${_devel}"
      for k in sha256 sha512 b2 b3; do
        sed -z "s/\(${k}sums_${j}=\)([^)]*)/\1(\n  '$("${k}sum" "${_file}"|awk '{print $1}')'\n  '$("${k}sum" "${_devel}"|awk '{print $1}')'\n)/g" -i PKGBUILD
      done
    } || {
      i="${i%:*}"
      _file="fabricmanager-linux-${_archdir}-${i}-archive.tar.xz"
      lftp -c "pget https://developer.download.nvidia.com/compute/nvidia-driver/redist/fabricmanager/linux-${_archdir}/${_file}"
      for k in sha256 sha512 b2 b3; do
        sed -z "s/\(${k}sums_${j}=\)([^)]*)/\1(\n  '$("${k}sum" "${_file}"|awk '{print $1}')'\n)/g" -i PKGBUILD
      done
    }
  done
  sed -e "s/^pkgver=.*/pkgver=${i%:*}/" -i PKGBUILD
  makepkg --printsrcinfo >.SRCINFO;git add PKGBUILD .SRCINFO;git commit -m "upgpkg: ${i%:*}-1"
  unset _xarch _dash _ver_prefix _ver_suffix
done
