#!/bin/bash

# Script for running various combinations of javascript benchmarks.
# Change the MOZJS_BIN and V8_BIN to the path for the Firefox
# and V8 binaries

MOZJS_BIN=/local/gsouther/projs/gecko-dev/js/src/build-release/dist/bin/js
V8_BIN="/local/gsouther/projs/v8/out/x64.release/d8 --nodebugger"


BENCH_TYPE=test



mkdir mozjs-opt
(cd mozjs-opt &&../moz-bench.sh $MOZJS_BIN ../../inputs ../.. $BENCH_TYPE 2> mozjs-opt-result.txt)

mkdir mozjs-baseline
(cd mozjs-baseline && ../moz-bench.sh "$MOZJS_BIN --no-ion" ../../inputs ../.. $BENCH_TYPE 2> mozjs-baseline-result.txt)

mkdir mozjs-int
(cd mozjs-int && ../moz-bench.sh "$MOZJS_BIN --no-ion --no-baseline" ../../inputs ../.. $BENCH_TYPE 2> mozjs-int-result.txt)

mkdir v8-base
(cd v8-base && ../v8-bench.sh "$V8_BIN --nocrankshaft" ../../inputs ../.. $BENCH_TYPE 2> v8-base-results.txt)

mkdir v8-opt
(cd v8-opt && ../v8-bench.sh "$V8_BIN" ../../inputs ../.. $BENCH_TYPE 2> v8-base-opt.txt)
