#!/usr/bin/env bash
set -euo pipefail
cd -- "$(dirname -- "$0")"
: "${WASI_SDK_PATH:?Set WASI_SDK_PATH to a wasi-sdk installation}"
grammar_source="${1:-../tree-sitter-zenos}"
mkdir -p grammars
"$WASI_SDK_PATH/bin/clang" -fPIC -shared -Os -Wl,--export=tree_sitter_zenos \
  -I "$grammar_source/src" "$grammar_source/src/parser.c" "$grammar_source/src/scanner.c" \
  -o grammars/zenos.wasm
