#!/bin/sh
BOX64_LD_LIBRARY_PATH="/opt/box64/lib${BOX64_LD_LIBRARY_PATH:+:${BOX64_LD_LIBRARY_PATH}}" \
BOX64_PATH="/opt/box64/bin${BOX64_PATH:+:${BOX64_PATH}}" /opt/box64/bin/box64 "${@}"
