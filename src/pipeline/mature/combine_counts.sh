#!/bin/bash
set -e

[ -n "$BUILD_ROOT" ] || { echo "BUILD_ROOT is not set"; exit 1; }
[ -n "$SRC_ROOT" ] || { echo "SRC_ROOT is not set"; exit 1; }

mkdir -p "$BUILD_ROOT/out"

"$SRC_ROOT/pipeline/utils/combine_counts.R" "$BUILD_ROOT/mature/counts" "*.tsv" "$BUILD_ROOT/out/mirna_counts.tsv"
