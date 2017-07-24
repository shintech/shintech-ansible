#!/usr/bin/env bash

set -e

mkdir -p $HOME
cd $HOME

if [[ -e $HOME/.bootstrapped ]]; then
  exit 0
fi

if [[ -e /tmp/pypy.tar.bz2 ]]; then
  tar -xjf /tmp/pypy.tar.bz2 -C $HOME
fi

mv -n pypy2-v5.8.0-linux64 pypy

## library fixup
mkdir -p pypy/lib
ln -snf /lib64/libncurses.so.5.9 $HOME/pypy/lib/libtinfo.so.5

mkdir -p $HOME/bin

cat > $HOME/bin/python <<EOF
#!/bin/bash
LD_LIBRARY_PATH=$HOME/pypy/lib:$LD_LIBRARY_PATH exec $HOME/pypy/bin/pypy "\$@"
EOF

rm -f /tmp/pypy.tar.bz2
chmod +x $HOME/bin/python
$HOME/bin/python --version