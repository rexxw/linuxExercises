#!/bin/bash

echo "usage: $0  <dir> <n>" 1>&2

dir=$1
n=$2


find /$dir -type f -size +$n'c' -exec rm -f {} \;
