#!/bin/sh
BOX86_LD_LIBRARY_PATH="/opt/box86/lib${BOX86_LD_LIBRARY_PATH:+:${BOX86_LD_LIBRARY_PATH}}" \
BOX86_PATH="/opt/box86/bin${BOX86_PATH:+:${BOX86_PATH}}" /opt/box86/bin/box86 "${@}"
