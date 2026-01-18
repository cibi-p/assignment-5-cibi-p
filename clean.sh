#!/bin/bash
export FORCE_UNSAFE_CONFIGURE=1
set -e

make -C buildroot distclean
